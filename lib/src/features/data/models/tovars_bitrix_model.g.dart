// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tovars_bitrix_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TovarsBitrixModel _$TovarsBitrixModelFromJson(Map<String, dynamic> json) =>
    TovarsBitrixModel(
      categoryId: json['categoryId'] as int,
      categoryName: json['categoryName'] as String,
      code: json['code'] as String,
      nameTovar: json['nameTovar'] as String,
      priceTovar: (json['priceTovar'] as num).toDouble(),
      maxCountTovar: json['maxCountTovar'] as int,
      imageUrlPreview: json['imageUrlPreview'] as String,
      listImageUrl: (json['listImageUrl'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      descriptionTovar: json['descriptionTovar'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      diagonal: json['diagonal'] as int,
    );

Map<String, dynamic> _$TovarsBitrixModelToJson(TovarsBitrixModel instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'code': instance.code,
      'nameTovar': instance.nameTovar,
      'priceTovar': instance.priceTovar,
      'maxCountTovar': instance.maxCountTovar,
      'imageUrlPreview': instance.imageUrlPreview,
      'listImageUrl': instance.listImageUrl,
      'descriptionTovar': instance.descriptionTovar,
      'width': instance.width,
      'height': instance.height,
      'diagonal': instance.diagonal,
    };
