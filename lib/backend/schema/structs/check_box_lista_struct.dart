// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckBoxListaStruct extends BaseStruct {
  CheckBoxListaStruct({
    bool? clientesCobrancas,
    bool? clientesEndereco,
    bool? clientesOpcoes,
    bool? clientesDados,
    bool? veiculosCobrancas,
    bool? veiculosEndereco,
    bool? veiculosOpcoes,
    bool? veiculosDados,
    bool? financeiroCobrancas,
    bool? financeiroEndereco,
    bool? finencieroOpcoes,
    bool? financeiroDados,
  })  : _clientesCobrancas = clientesCobrancas,
        _clientesEndereco = clientesEndereco,
        _clientesOpcoes = clientesOpcoes,
        _clientesDados = clientesDados,
        _veiculosCobrancas = veiculosCobrancas,
        _veiculosEndereco = veiculosEndereco,
        _veiculosOpcoes = veiculosOpcoes,
        _veiculosDados = veiculosDados,
        _financeiroCobrancas = financeiroCobrancas,
        _financeiroEndereco = financeiroEndereco,
        _finencieroOpcoes = finencieroOpcoes,
        _financeiroDados = financeiroDados;

  // "clientes_cobrancas" field.
  bool? _clientesCobrancas;
  bool get clientesCobrancas => _clientesCobrancas ?? false;
  set clientesCobrancas(bool? val) => _clientesCobrancas = val;

  bool hasClientesCobrancas() => _clientesCobrancas != null;

  // "clientes_endereco" field.
  bool? _clientesEndereco;
  bool get clientesEndereco => _clientesEndereco ?? false;
  set clientesEndereco(bool? val) => _clientesEndereco = val;

  bool hasClientesEndereco() => _clientesEndereco != null;

  // "clientes_opcoes" field.
  bool? _clientesOpcoes;
  bool get clientesOpcoes => _clientesOpcoes ?? false;
  set clientesOpcoes(bool? val) => _clientesOpcoes = val;

  bool hasClientesOpcoes() => _clientesOpcoes != null;

  // "clientes_dados" field.
  bool? _clientesDados;
  bool get clientesDados => _clientesDados ?? false;
  set clientesDados(bool? val) => _clientesDados = val;

  bool hasClientesDados() => _clientesDados != null;

  // "veiculos_cobrancas" field.
  bool? _veiculosCobrancas;
  bool get veiculosCobrancas => _veiculosCobrancas ?? false;
  set veiculosCobrancas(bool? val) => _veiculosCobrancas = val;

  bool hasVeiculosCobrancas() => _veiculosCobrancas != null;

  // "veiculos_endereco" field.
  bool? _veiculosEndereco;
  bool get veiculosEndereco => _veiculosEndereco ?? false;
  set veiculosEndereco(bool? val) => _veiculosEndereco = val;

  bool hasVeiculosEndereco() => _veiculosEndereco != null;

  // "veiculos_opcoes" field.
  bool? _veiculosOpcoes;
  bool get veiculosOpcoes => _veiculosOpcoes ?? false;
  set veiculosOpcoes(bool? val) => _veiculosOpcoes = val;

  bool hasVeiculosOpcoes() => _veiculosOpcoes != null;

  // "veiculos_dados" field.
  bool? _veiculosDados;
  bool get veiculosDados => _veiculosDados ?? false;
  set veiculosDados(bool? val) => _veiculosDados = val;

  bool hasVeiculosDados() => _veiculosDados != null;

  // "financeiro_cobrancas" field.
  bool? _financeiroCobrancas;
  bool get financeiroCobrancas => _financeiroCobrancas ?? false;
  set financeiroCobrancas(bool? val) => _financeiroCobrancas = val;

  bool hasFinanceiroCobrancas() => _financeiroCobrancas != null;

  // "financeiro_endereco" field.
  bool? _financeiroEndereco;
  bool get financeiroEndereco => _financeiroEndereco ?? false;
  set financeiroEndereco(bool? val) => _financeiroEndereco = val;

  bool hasFinanceiroEndereco() => _financeiroEndereco != null;

  // "finenciero_opcoes" field.
  bool? _finencieroOpcoes;
  bool get finencieroOpcoes => _finencieroOpcoes ?? false;
  set finencieroOpcoes(bool? val) => _finencieroOpcoes = val;

  bool hasFinencieroOpcoes() => _finencieroOpcoes != null;

  // "financeiro_dados" field.
  bool? _financeiroDados;
  bool get financeiroDados => _financeiroDados ?? false;
  set financeiroDados(bool? val) => _financeiroDados = val;

  bool hasFinanceiroDados() => _financeiroDados != null;

  static CheckBoxListaStruct fromMap(Map<String, dynamic> data) =>
      CheckBoxListaStruct(
        clientesCobrancas: data['clientes_cobrancas'] as bool?,
        clientesEndereco: data['clientes_endereco'] as bool?,
        clientesOpcoes: data['clientes_opcoes'] as bool?,
        clientesDados: data['clientes_dados'] as bool?,
        veiculosCobrancas: data['veiculos_cobrancas'] as bool?,
        veiculosEndereco: data['veiculos_endereco'] as bool?,
        veiculosOpcoes: data['veiculos_opcoes'] as bool?,
        veiculosDados: data['veiculos_dados'] as bool?,
        financeiroCobrancas: data['financeiro_cobrancas'] as bool?,
        financeiroEndereco: data['financeiro_endereco'] as bool?,
        finencieroOpcoes: data['finenciero_opcoes'] as bool?,
        financeiroDados: data['financeiro_dados'] as bool?,
      );

  static CheckBoxListaStruct? maybeFromMap(dynamic data) => data is Map
      ? CheckBoxListaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'clientes_cobrancas': _clientesCobrancas,
        'clientes_endereco': _clientesEndereco,
        'clientes_opcoes': _clientesOpcoes,
        'clientes_dados': _clientesDados,
        'veiculos_cobrancas': _veiculosCobrancas,
        'veiculos_endereco': _veiculosEndereco,
        'veiculos_opcoes': _veiculosOpcoes,
        'veiculos_dados': _veiculosDados,
        'financeiro_cobrancas': _financeiroCobrancas,
        'financeiro_endereco': _financeiroEndereco,
        'finenciero_opcoes': _finencieroOpcoes,
        'financeiro_dados': _financeiroDados,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'clientes_cobrancas': serializeParam(
          _clientesCobrancas,
          ParamType.bool,
        ),
        'clientes_endereco': serializeParam(
          _clientesEndereco,
          ParamType.bool,
        ),
        'clientes_opcoes': serializeParam(
          _clientesOpcoes,
          ParamType.bool,
        ),
        'clientes_dados': serializeParam(
          _clientesDados,
          ParamType.bool,
        ),
        'veiculos_cobrancas': serializeParam(
          _veiculosCobrancas,
          ParamType.bool,
        ),
        'veiculos_endereco': serializeParam(
          _veiculosEndereco,
          ParamType.bool,
        ),
        'veiculos_opcoes': serializeParam(
          _veiculosOpcoes,
          ParamType.bool,
        ),
        'veiculos_dados': serializeParam(
          _veiculosDados,
          ParamType.bool,
        ),
        'financeiro_cobrancas': serializeParam(
          _financeiroCobrancas,
          ParamType.bool,
        ),
        'financeiro_endereco': serializeParam(
          _financeiroEndereco,
          ParamType.bool,
        ),
        'finenciero_opcoes': serializeParam(
          _finencieroOpcoes,
          ParamType.bool,
        ),
        'financeiro_dados': serializeParam(
          _financeiroDados,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CheckBoxListaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CheckBoxListaStruct(
        clientesCobrancas: deserializeParam(
          data['clientes_cobrancas'],
          ParamType.bool,
          false,
        ),
        clientesEndereco: deserializeParam(
          data['clientes_endereco'],
          ParamType.bool,
          false,
        ),
        clientesOpcoes: deserializeParam(
          data['clientes_opcoes'],
          ParamType.bool,
          false,
        ),
        clientesDados: deserializeParam(
          data['clientes_dados'],
          ParamType.bool,
          false,
        ),
        veiculosCobrancas: deserializeParam(
          data['veiculos_cobrancas'],
          ParamType.bool,
          false,
        ),
        veiculosEndereco: deserializeParam(
          data['veiculos_endereco'],
          ParamType.bool,
          false,
        ),
        veiculosOpcoes: deserializeParam(
          data['veiculos_opcoes'],
          ParamType.bool,
          false,
        ),
        veiculosDados: deserializeParam(
          data['veiculos_dados'],
          ParamType.bool,
          false,
        ),
        financeiroCobrancas: deserializeParam(
          data['financeiro_cobrancas'],
          ParamType.bool,
          false,
        ),
        financeiroEndereco: deserializeParam(
          data['financeiro_endereco'],
          ParamType.bool,
          false,
        ),
        finencieroOpcoes: deserializeParam(
          data['finenciero_opcoes'],
          ParamType.bool,
          false,
        ),
        financeiroDados: deserializeParam(
          data['financeiro_dados'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CheckBoxListaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CheckBoxListaStruct &&
        clientesCobrancas == other.clientesCobrancas &&
        clientesEndereco == other.clientesEndereco &&
        clientesOpcoes == other.clientesOpcoes &&
        clientesDados == other.clientesDados &&
        veiculosCobrancas == other.veiculosCobrancas &&
        veiculosEndereco == other.veiculosEndereco &&
        veiculosOpcoes == other.veiculosOpcoes &&
        veiculosDados == other.veiculosDados &&
        financeiroCobrancas == other.financeiroCobrancas &&
        financeiroEndereco == other.financeiroEndereco &&
        finencieroOpcoes == other.finencieroOpcoes &&
        financeiroDados == other.financeiroDados;
  }

  @override
  int get hashCode => const ListEquality().hash([
        clientesCobrancas,
        clientesEndereco,
        clientesOpcoes,
        clientesDados,
        veiculosCobrancas,
        veiculosEndereco,
        veiculosOpcoes,
        veiculosDados,
        financeiroCobrancas,
        financeiroEndereco,
        finencieroOpcoes,
        financeiroDados
      ]);
}

CheckBoxListaStruct createCheckBoxListaStruct({
  bool? clientesCobrancas,
  bool? clientesEndereco,
  bool? clientesOpcoes,
  bool? clientesDados,
  bool? veiculosCobrancas,
  bool? veiculosEndereco,
  bool? veiculosOpcoes,
  bool? veiculosDados,
  bool? financeiroCobrancas,
  bool? financeiroEndereco,
  bool? finencieroOpcoes,
  bool? financeiroDados,
}) =>
    CheckBoxListaStruct(
      clientesCobrancas: clientesCobrancas,
      clientesEndereco: clientesEndereco,
      clientesOpcoes: clientesOpcoes,
      clientesDados: clientesDados,
      veiculosCobrancas: veiculosCobrancas,
      veiculosEndereco: veiculosEndereco,
      veiculosOpcoes: veiculosOpcoes,
      veiculosDados: veiculosDados,
      financeiroCobrancas: financeiroCobrancas,
      financeiroEndereco: financeiroEndereco,
      finencieroOpcoes: finencieroOpcoes,
      financeiroDados: financeiroDados,
    );
