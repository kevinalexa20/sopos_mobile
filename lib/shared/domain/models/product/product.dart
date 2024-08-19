import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String name,
    required int price,
    required int categoryId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Category category,
    @JsonKey(name: 'itemVariants') required List<ItemVariant> variants,
    @JsonKey(name: 'itemOptions') required List<ItemOption> options,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    required int id,
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class ItemVariant with _$ItemVariant {
  factory ItemVariant({
    required int id,
    required String name,
    required int price,
    required int itemId,
  }) = _ItemVariant;

  factory ItemVariant.fromJson(Map<String, dynamic> json) =>
      _$ItemVariantFromJson(json);
}

@freezed
class ItemOption with _$ItemOption {
  factory ItemOption({
    required int id,
    required String name,
    required int itemId,
    required List<String> options,
  }) = _ItemOption;

  factory ItemOption.fromJson(Map<String, dynamic> json) =>
      _$ItemOptionFromJson(json);
}
