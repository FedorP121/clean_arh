import 'package:equatable/equatable.dart';

class TovarsBitrix extends Equatable {
  final int categoryId;
  final String categoryName;
  final String code;
  final String nameTovar;
  final double priceTovar;
  final int maxCountTovar;
  final String imageUrlPreview;
  final List<String> listImageUrl;
  final String descriptionTovar;
  final int width;
  final int height;
  final int diagonal;
  const TovarsBitrix({
    required this.categoryId,
    required this.categoryName,
    required this.code,
    required this.nameTovar,
    required this.priceTovar,
    required this.maxCountTovar,
    required this.imageUrlPreview,
    required this.listImageUrl,
    required this.descriptionTovar,
    required this.width,
    required this.height,
    required this.diagonal,
  });

  @override
  List<Object?> get props => [
        categoryId,
        categoryName,
        code,
        nameTovar,
        priceTovar,
        maxCountTovar,
        imageUrlPreview,
        listImageUrl,
        descriptionTovar,
        width,
        height,
        diagonal,
      ];
}
