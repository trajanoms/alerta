import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _constNome = prefs.getString('ff_constNome') ?? _constNome;
    });
    _safeInit(() {
      _menuSelecionadoGeral =
          prefs.getString('ff_menuSelecionadoGeral') ?? _menuSelecionadoGeral;
    });
    _safeInit(() {
      _menuClientes = prefs.getString('ff_menuClientes') ?? _menuClientes;
    });
    _safeInit(() {
      _colorSelecionada =
          prefs.getString('ff_colorSelecionada') ?? _colorSelecionada;
    });
    _safeInit(() {
      _clienteSelecionado =
          prefs.getString('ff_clienteSelecionado') ?? _clienteSelecionado;
    });
    _safeInit(() {
      _offset = prefs.getInt('ff_offset') ?? _offset;
    });
    _safeInit(() {
      _limit = prefs.getInt('ff_limit') ?? _limit;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          final serializedData = prefs.getString('ff_user') ?? '{}';
          _user = UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _listaDespesasFinanceiro =
          prefs.getStringList('ff_listaDespesasFinanceiro')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _listaDespesasFinanceiro;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _constNome = '';
  String get constNome => _constNome;
  set constNome(String value) {
    _constNome = value;
    prefs.setString('ff_constNome', value);
  }

  String _menuSelecionadoGeral = '';
  String get menuSelecionadoGeral => _menuSelecionadoGeral;
  set menuSelecionadoGeral(String value) {
    _menuSelecionadoGeral = value;
    prefs.setString('ff_menuSelecionadoGeral', value);
  }

  String _menuClientes = '';
  String get menuClientes => _menuClientes;
  set menuClientes(String value) {
    _menuClientes = value;
    prefs.setString('ff_menuClientes', value);
  }

  bool _liberarCamposDados = false;
  bool get liberarCamposDados => _liberarCamposDados;
  set liberarCamposDados(bool value) {
    _liberarCamposDados = value;
  }

  String _valueFormat = '';
  String get valueFormat => _valueFormat;
  set valueFormat(String value) {
    _valueFormat = value;
  }

  double _valueDouble = 0.0;
  double get valueDouble => _valueDouble;
  set valueDouble(double value) {
    _valueDouble = value;
  }

  String _valueFormat2 = '';
  String get valueFormat2 => _valueFormat2;
  set valueFormat2(String value) {
    _valueFormat2 = value;
  }

  double _valueDouble2 = 0.0;
  double get valueDouble2 => _valueDouble2;
  set valueDouble2(double value) {
    _valueDouble2 = value;
  }

  double _valueDouble3 = 0.0;
  double get valueDouble3 => _valueDouble3;
  set valueDouble3(double value) {
    _valueDouble3 = value;
  }

  String _valueFormat3 = '';
  String get valueFormat3 => _valueFormat3;
  set valueFormat3(String value) {
    _valueFormat3 = value;
  }

  double _valueDouble4 = 0.0;
  double get valueDouble4 => _valueDouble4;
  set valueDouble4(double value) {
    _valueDouble4 = value;
  }

  String _valueFormat4 = '';
  String get valueFormat4 => _valueFormat4;
  set valueFormat4(String value) {
    _valueFormat4 = value;
  }

  double _vlrParcelaRastreador = 0.0;
  double get vlrParcelaRastreador => _vlrParcelaRastreador;
  set vlrParcelaRastreador(double value) {
    _vlrParcelaRastreador = value;
  }

  String _colorSelecionada = '';
  String get colorSelecionada => _colorSelecionada;
  set colorSelecionada(String value) {
    _colorSelecionada = value;
    prefs.setString('ff_colorSelecionada', value);
  }

  int _indexCountParcelas = 0;
  int get indexCountParcelas => _indexCountParcelas;
  set indexCountParcelas(int value) {
    _indexCountParcelas = value;
  }

  String _clienteSelecionado = '';
  String get clienteSelecionado => _clienteSelecionado;
  set clienteSelecionado(String value) {
    _clienteSelecionado = value;
    prefs.setString('ff_clienteSelecionado', value);
  }

  String _filtroSituacaoCliente = '';
  String get filtroSituacaoCliente => _filtroSituacaoCliente;
  set filtroSituacaoCliente(String value) {
    _filtroSituacaoCliente = value;
  }

  int _offset = 0;
  int get offset => _offset;
  set offset(int value) {
    _offset = value;
    prefs.setInt('ff_offset', value);
  }

  int _limit = 9;
  int get limit => _limit;
  set limit(int value) {
    _limit = value;
    prefs.setInt('ff_limit', value);
  }

  String _rastreadorCadastrado = '';
  String get rastreadorCadastrado => _rastreadorCadastrado;
  set rastreadorCadastrado(String value) {
    _rastreadorCadastrado = value;
  }

  String _filtroOperadora = '';
  String get filtroOperadora => _filtroOperadora;
  set filtroOperadora(String value) {
    _filtroOperadora = value;
  }

  String _filtroTipoVeiculo = '';
  String get filtroTipoVeiculo => _filtroTipoVeiculo;
  set filtroTipoVeiculo(String value) {
    _filtroTipoVeiculo = value;
  }

  String _filtroClienteID = '';
  String get filtroClienteID => _filtroClienteID;
  set filtroClienteID(String value) {
    _filtroClienteID = value;
  }

  String _navegacaoTelasVeiculos = '';
  String get navegacaoTelasVeiculos => _navegacaoTelasVeiculos;
  set navegacaoTelasVeiculos(String value) {
    _navegacaoTelasVeiculos = value;
  }

  String _menuSelecionadoConfig = '';
  String get menuSelecionadoConfig => _menuSelecionadoConfig;
  set menuSelecionadoConfig(String value) {
    _menuSelecionadoConfig = value;
  }

  String _menuSelecionarFinanceiro = '';
  String get menuSelecionarFinanceiro => _menuSelecionarFinanceiro;
  set menuSelecionarFinanceiro(String value) {
    _menuSelecionarFinanceiro = value;
  }

  String _menuSelectAlertas = '';
  String get menuSelectAlertas => _menuSelectAlertas;
  set menuSelectAlertas(String value) {
    _menuSelectAlertas = value;
  }

  List<ListStruct> _list = [
    ListStruct.fromSerializableMap(
        jsonDecode('{\"Nome\":\"Emerson\",\"Value\":\"80\"}')),
    ListStruct.fromSerializableMap(
        jsonDecode('{\"Nome\":\"Diovanio\",\"Value\":\"10\"}')),
    ListStruct.fromSerializableMap(
        jsonDecode('{\"Nome\":\"Kaio\",\"Value\":\"10\"}'))
  ];
  List<ListStruct> get list => _list;
  set list(List<ListStruct> value) {
    _list = value;
  }

  void addToList(ListStruct value) {
    list.add(value);
  }

  void removeFromList(ListStruct value) {
    list.remove(value);
  }

  void removeAtIndexFromList(int index) {
    list.removeAt(index);
  }

  void updateListAtIndex(
    int index,
    ListStruct Function(ListStruct) updateFn,
  ) {
    list[index] = updateFn(_list[index]);
  }

  void insertAtIndexInList(int index, ListStruct value) {
    list.insert(index, value);
  }

  List<ListdataStruct> _listgraf = [
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Janeiro\",\"value\":\"1\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Fevereiro\",\"value\":\"2\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Março\",\"value\":\"3\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Maio\",\"value\":\"4\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Abril\",\"value\":\"5\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Junho\",\"value\":\"6\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Julho\",\"value\":\"7\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Agosto\",\"value\":\"8\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Setembro\",\"value\":\"9\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Outubro\",\"value\":\"10\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Novembro\",\"value\":\"11\"}')),
    ListdataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"dezembro\",\"value\":\"12\"}'))
  ];
  List<ListdataStruct> get listgraf => _listgraf;
  set listgraf(List<ListdataStruct> value) {
    _listgraf = value;
  }

  void addToListgraf(ListdataStruct value) {
    listgraf.add(value);
  }

  void removeFromListgraf(ListdataStruct value) {
    listgraf.remove(value);
  }

  void removeAtIndexFromListgraf(int index) {
    listgraf.removeAt(index);
  }

  void updateListgrafAtIndex(
    int index,
    ListdataStruct Function(ListdataStruct) updateFn,
  ) {
    listgraf[index] = updateFn(_listgraf[index]);
  }

  void insertAtIndexInListgraf(int index, ListdataStruct value) {
    listgraf.insert(index, value);
  }

  String _checkPagamento = '';
  String get checkPagamento => _checkPagamento;
  set checkPagamento(String value) {
    _checkPagamento = value;
  }

  int _veiculoID = 0;
  int get veiculoID => _veiculoID;
  set veiculoID(int value) {
    _veiculoID = value;
  }

  UserStruct _user = UserStruct();
  UserStruct get user => _user;
  set user(UserStruct value) {
    _user = value;
    prefs.setString('ff_user', value.serialize());
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_user);
    prefs.setString('ff_user', _user.serialize());
  }

  List<ImagemTempStruct> _listaImagensTemp = [];
  List<ImagemTempStruct> get listaImagensTemp => _listaImagensTemp;
  set listaImagensTemp(List<ImagemTempStruct> value) {
    _listaImagensTemp = value;
  }

  void addToListaImagensTemp(ImagemTempStruct value) {
    listaImagensTemp.add(value);
  }

  void removeFromListaImagensTemp(ImagemTempStruct value) {
    listaImagensTemp.remove(value);
  }

  void removeAtIndexFromListaImagensTemp(int index) {
    listaImagensTemp.removeAt(index);
  }

  void updateListaImagensTempAtIndex(
    int index,
    ImagemTempStruct Function(ImagemTempStruct) updateFn,
  ) {
    listaImagensTemp[index] = updateFn(_listaImagensTemp[index]);
  }

  void insertAtIndexInListaImagensTemp(int index, ImagemTempStruct value) {
    listaImagensTemp.insert(index, value);
  }

  bool _confirmanofity = false;
  bool get confirmanofity => _confirmanofity;
  set confirmanofity(bool value) {
    _confirmanofity = value;
  }

  List<String> _listaNotifyNome = [];
  List<String> get listaNotifyNome => _listaNotifyNome;
  set listaNotifyNome(List<String> value) {
    _listaNotifyNome = value;
  }

  void addToListaNotifyNome(String value) {
    listaNotifyNome.add(value);
  }

  void removeFromListaNotifyNome(String value) {
    listaNotifyNome.remove(value);
  }

  void removeAtIndexFromListaNotifyNome(int index) {
    listaNotifyNome.removeAt(index);
  }

  void updateListaNotifyNomeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaNotifyNome[index] = updateFn(_listaNotifyNome[index]);
  }

  void insertAtIndexInListaNotifyNome(int index, String value) {
    listaNotifyNome.insert(index, value);
  }

  List<String> _listaNotifyUID = [];
  List<String> get listaNotifyUID => _listaNotifyUID;
  set listaNotifyUID(List<String> value) {
    _listaNotifyUID = value;
  }

  void addToListaNotifyUID(String value) {
    listaNotifyUID.add(value);
  }

  void removeFromListaNotifyUID(String value) {
    listaNotifyUID.remove(value);
  }

  void removeAtIndexFromListaNotifyUID(int index) {
    listaNotifyUID.removeAt(index);
  }

  void updateListaNotifyUIDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaNotifyUID[index] = updateFn(_listaNotifyUID[index]);
  }

  void insertAtIndexInListaNotifyUID(int index, String value) {
    listaNotifyUID.insert(index, value);
  }

  List<CountPermiStruct> _countpermissao = [];
  List<CountPermiStruct> get countpermissao => _countpermissao;
  set countpermissao(List<CountPermiStruct> value) {
    _countpermissao = value;
  }

  void addToCountpermissao(CountPermiStruct value) {
    countpermissao.add(value);
  }

  void removeFromCountpermissao(CountPermiStruct value) {
    countpermissao.remove(value);
  }

  void removeAtIndexFromCountpermissao(int index) {
    countpermissao.removeAt(index);
  }

  void updateCountpermissaoAtIndex(
    int index,
    CountPermiStruct Function(CountPermiStruct) updateFn,
  ) {
    countpermissao[index] = updateFn(_countpermissao[index]);
  }

  void insertAtIndexInCountpermissao(int index, CountPermiStruct value) {
    countpermissao.insert(index, value);
  }

  List<dynamic> _listaDespesasFinanceiro = [];
  List<dynamic> get listaDespesasFinanceiro => _listaDespesasFinanceiro;
  set listaDespesasFinanceiro(List<dynamic> value) {
    _listaDespesasFinanceiro = value;
    prefs.setStringList(
        'ff_listaDespesasFinanceiro', value.map((x) => jsonEncode(x)).toList());
  }

  void addToListaDespesasFinanceiro(dynamic value) {
    listaDespesasFinanceiro.add(value);
    prefs.setStringList('ff_listaDespesasFinanceiro',
        _listaDespesasFinanceiro.map((x) => jsonEncode(x)).toList());
  }

  void removeFromListaDespesasFinanceiro(dynamic value) {
    listaDespesasFinanceiro.remove(value);
    prefs.setStringList('ff_listaDespesasFinanceiro',
        _listaDespesasFinanceiro.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromListaDespesasFinanceiro(int index) {
    listaDespesasFinanceiro.removeAt(index);
    prefs.setStringList('ff_listaDespesasFinanceiro',
        _listaDespesasFinanceiro.map((x) => jsonEncode(x)).toList());
  }

  void updateListaDespesasFinanceiroAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    listaDespesasFinanceiro[index] = updateFn(_listaDespesasFinanceiro[index]);
    prefs.setStringList('ff_listaDespesasFinanceiro',
        _listaDespesasFinanceiro.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInListaDespesasFinanceiro(int index, dynamic value) {
    listaDespesasFinanceiro.insert(index, value);
    prefs.setStringList('ff_listaDespesasFinanceiro',
        _listaDespesasFinanceiro.map((x) => jsonEncode(x)).toList());
  }

  DateTime? _dataInicioHistorico;
  DateTime? get dataInicioHistorico => _dataInicioHistorico;
  set dataInicioHistorico(DateTime? value) {
    _dataInicioHistorico = value;
  }

  DateTime? _dataFimHistorico;
  DateTime? get dataFimHistorico => _dataFimHistorico;
  set dataFimHistorico(DateTime? value) {
    _dataFimHistorico = value;
  }

  DateTime? _dataDiaHistorico;
  DateTime? get dataDiaHistorico => _dataDiaHistorico;
  set dataDiaHistorico(DateTime? value) {
    _dataDiaHistorico = value;
  }

  String _nomeClienteEstoque = '';
  String get nomeClienteEstoque => _nomeClienteEstoque;
  set nomeClienteEstoque(String value) {
    _nomeClienteEstoque = value;
  }

  bool _atribuirCliente = false;
  bool get atribuirCliente => _atribuirCliente;
  set atribuirCliente(bool value) {
    _atribuirCliente = value;
  }

  List<ListaItemLojaAssosciadoStruct> _listaLojaAssociados = [];
  List<ListaItemLojaAssosciadoStruct> get listaLojaAssociados =>
      _listaLojaAssociados;
  set listaLojaAssociados(List<ListaItemLojaAssosciadoStruct> value) {
    _listaLojaAssociados = value;
  }

  void addToListaLojaAssociados(ListaItemLojaAssosciadoStruct value) {
    listaLojaAssociados.add(value);
  }

  void removeFromListaLojaAssociados(ListaItemLojaAssosciadoStruct value) {
    listaLojaAssociados.remove(value);
  }

  void removeAtIndexFromListaLojaAssociados(int index) {
    listaLojaAssociados.removeAt(index);
  }

  void updateListaLojaAssociadosAtIndex(
    int index,
    ListaItemLojaAssosciadoStruct Function(ListaItemLojaAssosciadoStruct)
        updateFn,
  ) {
    listaLojaAssociados[index] = updateFn(_listaLojaAssociados[index]);
  }

  void insertAtIndexInListaLojaAssociados(
      int index, ListaItemLojaAssosciadoStruct value) {
    listaLojaAssociados.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
