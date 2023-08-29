import 'package:clean_arh/src/features/domain/entities/tovars_bitrix.dart';

import 'package:json_annotation/json_annotation.dart';

part 'tovars_bitrix_model.g.dart';

@JsonSerializable()
class TovarsBitrixModel extends TovarsBitrix {
  const TovarsBitrixModel(
      {required super.categoryId,
      required super.categoryName,
      required super.code,
      required super.nameTovar,
      required super.priceTovar,
      required super.maxCountTovar,
      required super.imageUrlPreview,
      required super.listImageUrl,
      required super.descriptionTovar,
      required super.width,
      required super.height,
      required super.diagonal});

  factory TovarsBitrixModel.fromJson(Map<String, dynamic> json) =>
      _$TovarsBitrixModelFromJson(json);

  Map<String, dynamic> toJson() => _$TovarsBitrixModelToJson(this);
}
// dart run build_runner build
