// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaIMGBancoStruct extends BaseStruct {
  ListaIMGBancoStruct({
    String? id,
    String? rastreadorlojaId,
    String? legenda,
    String? imagemUrl,
  })  : _id = id,
        _rastreadorlojaId = rastreadorlojaId,
        _legenda = legenda,
        _imagemUrl = imagemUrl;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "rastreadorloja_id" field.
  String? _rastreadorlojaId;
  String get rastreadorlojaId => _rastreadorlojaId ?? '';
  set rastreadorlojaId(String? val) => _rastreadorlojaId = val;

  bool hasRastreadorlojaId() => _rastreadorlojaId != null;

  // "legenda" field.
  String? _legenda;
  String get legenda => _legenda ?? '';
  set legenda(String? val) => _legenda = val;

  bool hasLegenda() => _legenda != null;

  // "imagem_url" field.
  String? _imagemUrl;
  String get imagemUrl => _imagemUrl ?? '';
  set imagemUrl(String? val) => _imagemUrl = val;

  bool hasImagemUrl() => _imagemUrl != null;

  static ListaIMGBancoStruct fromMap(Map<String, dynamic> data) =>
      ListaIMGBancoStruct(
        id: data['id'] as String?,
        rastreadorlojaId: data['rastreadorloja_id'] as String?,
        legenda: data['legenda'] as String?,
        imagemUrl: data['imagem_url'] as String?,
      );

  static ListaIMGBancoStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaIMGBancoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'rastreadorloja_id': _rastreadorlojaId,
        'legenda': _legenda,
        'imagem_url': _imagemUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'rastreadorloja_id': serializeParam(
          _rastreadorlojaId,
          ParamType.String,
        ),
        'legenda': serializeParam(
          _legenda,
          ParamType.String,
        ),
        'imagem_url': serializeParam(
          _imagemUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListaIMGBancoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListaIMGBancoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        rastreadorlojaId: deserializeParam(
          data['rastreadorloja_id'],
          ParamType.String,
          false,
        ),
        legenda: deserializeParam(
          data['legenda'],
          ParamType.String,
          false,
        ),
        imagemUrl: deserializeParam(
          data['imagem_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListaIMGBancoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaIMGBancoStruct &&
        id == other.id &&
        rastreadorlojaId == other.rastreadorlojaId &&
        legenda == other.legenda &&
        imagemUrl == other.imagemUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, rastreadorlojaId, legenda, imagemUrl]);
}

ListaIMGBancoStruct createListaIMGBancoStruct({
  String? id,
  String? rastreadorlojaId,
  String? legenda,
  String? imagemUrl,
}) =>
    ListaIMGBancoStruct(
      id: id,
      rastreadorlojaId: rastreadorlojaId,
      legenda: legenda,
      imagemUrl: imagemUrl,
    );
