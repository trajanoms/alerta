// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagemTempStruct extends BaseStruct {
  ImagemTempStruct({
    String? imagemUrl,
    String? legenda,
  })  : _imagemUrl = imagemUrl,
        _legenda = legenda;

  // "imagemUrl" field.
  String? _imagemUrl;
  String get imagemUrl => _imagemUrl ?? '';
  set imagemUrl(String? val) => _imagemUrl = val;

  bool hasImagemUrl() => _imagemUrl != null;

  // "legenda" field.
  String? _legenda;
  String get legenda => _legenda ?? '';
  set legenda(String? val) => _legenda = val;

  bool hasLegenda() => _legenda != null;

  static ImagemTempStruct fromMap(Map<String, dynamic> data) =>
      ImagemTempStruct(
        imagemUrl: data['imagemUrl'] as String?,
        legenda: data['legenda'] as String?,
      );

  static ImagemTempStruct? maybeFromMap(dynamic data) => data is Map
      ? ImagemTempStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'imagemUrl': _imagemUrl,
        'legenda': _legenda,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imagemUrl': serializeParam(
          _imagemUrl,
          ParamType.String,
        ),
        'legenda': serializeParam(
          _legenda,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImagemTempStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImagemTempStruct(
        imagemUrl: deserializeParam(
          data['imagemUrl'],
          ParamType.String,
          false,
        ),
        legenda: deserializeParam(
          data['legenda'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImagemTempStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImagemTempStruct &&
        imagemUrl == other.imagemUrl &&
        legenda == other.legenda;
  }

  @override
  int get hashCode => const ListEquality().hash([imagemUrl, legenda]);
}

ImagemTempStruct createImagemTempStruct({
  String? imagemUrl,
  String? legenda,
}) =>
    ImagemTempStruct(
      imagemUrl: imagemUrl,
      legenda: legenda,
    );
