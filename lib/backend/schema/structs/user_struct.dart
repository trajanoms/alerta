// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? nome,
    String? tipoUsuario,
    int? codCliente,
    bool? ativo,
    String? userId,
  })  : _nome = nome,
        _tipoUsuario = tipoUsuario,
        _codCliente = codCliente,
        _ativo = ativo,
        _userId = userId;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "tipo_usuario" field.
  String? _tipoUsuario;
  String get tipoUsuario => _tipoUsuario ?? '';
  set tipoUsuario(String? val) => _tipoUsuario = val;

  bool hasTipoUsuario() => _tipoUsuario != null;

  // "cod_cliente" field.
  int? _codCliente;
  int get codCliente => _codCliente ?? 0;
  set codCliente(int? val) => _codCliente = val;

  void incrementCodCliente(int amount) => codCliente = codCliente + amount;

  bool hasCodCliente() => _codCliente != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        nome: data['nome'] as String?,
        tipoUsuario: data['tipo_usuario'] as String?,
        codCliente: castToType<int>(data['cod_cliente']),
        ativo: data['ativo'] as bool?,
        userId: data['user_id'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'tipo_usuario': _tipoUsuario,
        'cod_cliente': _codCliente,
        'ativo': _ativo,
        'user_id': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'tipo_usuario': serializeParam(
          _tipoUsuario,
          ParamType.String,
        ),
        'cod_cliente': serializeParam(
          _codCliente,
          ParamType.int,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        tipoUsuario: deserializeParam(
          data['tipo_usuario'],
          ParamType.String,
          false,
        ),
        codCliente: deserializeParam(
          data['cod_cliente'],
          ParamType.int,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        nome == other.nome &&
        tipoUsuario == other.tipoUsuario &&
        codCliente == other.codCliente &&
        ativo == other.ativo &&
        userId == other.userId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, tipoUsuario, codCliente, ativo, userId]);
}

UserStruct createUserStruct({
  String? nome,
  String? tipoUsuario,
  int? codCliente,
  bool? ativo,
  String? userId,
}) =>
    UserStruct(
      nome: nome,
      tipoUsuario: tipoUsuario,
      codCliente: codCliente,
      ativo: ativo,
      userId: userId,
    );
