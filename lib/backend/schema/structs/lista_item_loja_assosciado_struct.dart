// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaItemLojaAssosciadoStruct extends BaseStruct {
  ListaItemLojaAssosciadoStruct({
    String? nome,
    double? valor,
    String? id,
    String? img,
    String? descricao,
  })  : _nome = nome,
        _valor = valor,
        _id = id,
        _img = img,
        _descricao = descricao;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;

  void incrementValor(double amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  static ListaItemLojaAssosciadoStruct fromMap(Map<String, dynamic> data) =>
      ListaItemLojaAssosciadoStruct(
        nome: data['nome'] as String?,
        valor: castToType<double>(data['valor']),
        id: data['id'] as String?,
        img: data['img'] as String?,
        descricao: data['descricao'] as String?,
      );

  static ListaItemLojaAssosciadoStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ListaItemLojaAssosciadoStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'valor': _valor,
        'id': _id,
        'img': _img,
        'descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListaItemLojaAssosciadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListaItemLojaAssosciadoStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListaItemLojaAssosciadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaItemLojaAssosciadoStruct &&
        nome == other.nome &&
        valor == other.valor &&
        id == other.id &&
        img == other.img &&
        descricao == other.descricao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, valor, id, img, descricao]);
}

ListaItemLojaAssosciadoStruct createListaItemLojaAssosciadoStruct({
  String? nome,
  double? valor,
  String? id,
  String? img,
  String? descricao,
}) =>
    ListaItemLojaAssosciadoStruct(
      nome: nome,
      valor: valor,
      id: id,
      img: img,
      descricao: descricao,
    );
