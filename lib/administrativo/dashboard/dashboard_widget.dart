// substitua TODO o conteúdo do dashboard_widget.dart por esse

import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  static String routeName = 'dashboard';
  static String routePath = '/dashboard';

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  int totalClientes = 0;
  int novosClientes = 0;
  int cancelamentos = 0;
  int clientesAtraso = 0;
  int totalVeiculos = 0;

  Map<String, int> veiculosData = {};
  Map<String, int> estoqueData = {};
  Map<String, int> clientesData = {};

  List<Map<String, dynamic>> receitaMensal = [];
  bool loading = true;

  DateTime? dataInicio;
  DateTime? dataFim;
  String filtroData = 'data_pagamento';

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());
    carregarDadosDashboard();
  }

  Future<void> carregarDadosDashboard() async {
    final supabase = Supabase.instance.client;

    final usuarios = await supabase.from('user').select();
    final novos = await supabase
        .from('user')
        .select()
        .gte('created_at', DateTime.now().subtract(Duration(days: 30)).toIso8601String());

    final cancelados = usuarios.where((u) => u['acesso_bloqueado'] == true).toList();
    final atrasos = await supabase.from('lancamentos_financeiros').select().eq('status', 'em_atraso');

    final filtro = filtroData;
    final query = supabase.from('lancamentos_financeiros').select('valor, $filtro').not(filtro, 'is', null);
    if (dataInicio != null) query.gte(filtro, dataInicio!.toIso8601String());
    if (dataFim != null) query.lte(filtro, dataFim!.toIso8601String());
    final receita = await query;

    final veiculos = await supabase.from('veiculos').select();
    final rastreadores = await supabase.from('rastreadores').select();
    final users = await supabase.from('user').select();

    final receitaPorMes = <String, double>{};
    for (final item in receita) {
      final data = DateTime.tryParse(item[filtro]);
      if (data != null) {
        final mes = data.month;
        receitaPorMes['$mes'] = (receitaPorMes['$mes'] ?? 0) + (item['valor'] ?? 0.0);
      }
    }

    veiculosData = {
      'Rastreando': veiculos.where((v) => v['status'] == 'rastreando').length,
      'Desligados': veiculos.where((v) => v['status'] == 'desligado').length,
      'Sem Sinal': veiculos.where((v) => v['status'] == 'sem_sinal').length,
      'Bloqueados': veiculos.where((v) => v['status'] == 'bloqueado').length,
      'Cerca Violada': veiculos.where((v) => v['status'] == 'cerca_violada').length,
    };

    estoqueData = {
      'Disponíveis': rastreadores.where((r) => r['situacao'] == 'Disponível').length,
      'Alocados': rastreadores.where((r) => r['situacao'] == 'Alocado').length,
      'Defeituosos': rastreadores.where((r) => r['situacao'] == 'Defeituoso').length,
      'Reservados': rastreadores.where((r) => r['situacao'] == 'Reservado').length,
      'Desligados': rastreadores.where((r) => r['situacao'] == 'Desligado').length,
    };

    clientesData = {
      'PF': users.where((u) => u['tipo_documento'] == 'CPF').length,
      'PJ': users.where((u) => u['tipo_documento'] == 'CNPJ').length,
      'Outros': users.where((u) => u['tipo_documento'] != 'CPF' && u['tipo_documento'] != 'CNPJ').length,
    };

    setState(() {
      totalClientes = usuarios.length;
      novosClientes = novos.length;
      cancelamentos = cancelados.length;
      clientesAtraso = atrasos.length;

      receitaMensal = receitaPorMes.entries.map((e) => {'mes': int.parse(e.key), 'valor': e.value}).toList()
        ..sort((a, b) => (a['mes'] ?? 0).compareTo(b['mes'] ?? 0));

      totalVeiculos = veiculos.length;
      loading = false;
    });
  }

  Widget buildDashboardCard(String label, int value, Color color, Color borderColor, IconData icon) {
    return Expanded(
      child: AnimatedOpacity(
        opacity: loading ? 0.2 : 1,
        duration: const Duration(milliseconds: 500),
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: borderColor, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 32, color: borderColor),
                const SizedBox(height: 8),
                Text(label, style: const TextStyle(fontWeight: FontWeight.w500), textAlign: TextAlign.center),
                const SizedBox(height: 6),
                Text('$value', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: borderColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildReceitaChart() {
    final dados = receitaMensal.isEmpty ? List.generate(6, (i) => {'mes': i + 1, 'valor': (i + 1) * 1000.0}) : receitaMensal;

    return SizedBox(
      height: 250,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BarChart(
            BarChartData(
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, _) {
                      final mes = value.toInt();
                      final nomesMeses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'];
                      return Text(nomesMeses[mes - 1]);
                    },
                  ),
                ),
                leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
              ),
              barGroups: dados.map((d) {
                return BarChartGroupData(
                  x: d['mes'],
                  barRods: [BarChartRodData(toY: d['valor'] ?? 0.0, color: Colors.blueAccent)],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDonutChart(String title, int total, Map<String, int> dataMap) {
    final sections = dataMap.entries.map((entry) {
      return PieChartSectionData(
        value: entry.value.toDouble(),
        color: _getColorForLabel(entry.key),
        title: '',
      );
    }).toList();

    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              Text('$total', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(title == "Clientes" ? "Total de Clientes" : "Total de Rastreadores"),
              const SizedBox(height: 16),
              SizedBox(
                height: 150,
                child: PieChart(
                  PieChartData(
                    sections: sections,
                    sectionsSpace: 4,
                    centerSpaceRadius: 40,
                    borderData: FlBorderData(show: false),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Column(
                children: dataMap.entries.map((e) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(width: 12, height: 12, color: _getColorForLabel(e.key)),
                          const SizedBox(width: 6),
                          Text(e.key),
                        ],
                      ),
                      Text('${e.value}'),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getColorForLabel(String label) {
    switch (label) {
      case 'Disponíveis':
      case 'PF':
      case 'Rastreando':
        return Colors.green;
      case 'Alocados':
      case 'PJ':
        return Colors.blue;
      case 'Defeituosos':
        return Colors.red;
      case 'Reservados':
        return Colors.amber;
      case 'Outros':
        return Colors.grey;
      case 'Desligados':
        return Colors.black87;
      case 'Sem Sinal':
        return Colors.orange;
      case 'Bloqueados':
        return Colors.redAccent;
      case 'Cerca Violada':
        return Colors.grey.shade400;
      default:
        return Colors.black26;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: loading
            ? const Center(child: SpinKitFadingCircle(color: Colors.blue, size: 60))
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const HeaderWidget(),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton<String>(
                            value: filtroData,
                            onChanged: (val) => setState(() => filtroData = val!),
                            items: const [
                              DropdownMenuItem(value: 'data_pagamento', child: Text('Data de Pagamento')),
                              DropdownMenuItem(value: 'data_vencimento', child: Text('Data de Vencimento')),
                              DropdownMenuItem(value: 'criado_em', child: Text('Criado em')),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextButton(
                            child: Text(dataInicio == null ? 'Início' : DateFormat('dd/MM/yyyy').format(dataInicio!)),
                            onPressed: () async {
                              final picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023),
                                lastDate: DateTime.now(),
                              );
                              if (picked != null) setState(() => dataInicio = picked);
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextButton(
                            child: Text(dataFim == null ? 'Fim' : DateFormat('dd/MM/yyyy').format(dataFim!)),
                            onPressed: () async {
                              final picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023),
                                lastDate: DateTime.now(),
                              );
                              if (picked != null) setState(() => dataFim = picked);
                            },
                          ),
                        ),
                        ElevatedButton(
                          onPressed: carregarDadosDashboard,
                          child: const Text('Filtrar'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        buildDashboardCard('Clientes Totais Ativos', totalClientes, const Color(0xFFCAE1FC), const Color(0xFF529FFA), Icons.person),
                        const SizedBox(width: 8),
                        buildDashboardCard('Novos Clientes', novosClientes, const Color(0xFFE8FFED), const Color(0xFF19DA46), Icons.person_add),
                        const SizedBox(width: 8),
                        buildDashboardCard('Cancelamentos', cancelamentos, const Color(0xFFFFA680), const Color(0xFFDB3C0B), Icons.cancel),
                        const SizedBox(width: 8),
                        buildDashboardCard('Clientes em Atraso', clientesAtraso, const Color(0xFFF4E2AD), const Color(0xFFD09C05), Icons.warning),
                      ],
                    ),
                    const SizedBox(height: 24),
                    buildReceitaChart(),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        buildDonutChart('Veículos', totalVeiculos, veiculosData),
                        const SizedBox(width: 12),
                        buildDonutChart('Estoque', estoqueData.values.reduce((a, b) => a + b), estoqueData),
                        const SizedBox(width: 12),
                        buildDonutChart('Clientes', totalClientes, clientesData),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
