import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  factory ProductResponse({
    required int id,
    required String name,
    required double price,
    required int categoryId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required CategoryResponse category,
    required List<ItemVariantResponse> itemVariants,
    required List<ItemOptionResponse> itemOptions,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
class CategoryResponse with _$CategoryResponse {
  factory CategoryResponse({
    required int id,
    required String name,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}

@freezed
class ItemVariantResponse with _$ItemVariantResponse {
  factory ItemVariantResponse({
    required int id,
    required String name,
    required double price,
    required int itemId,
  }) = _ItemVariantResponse;

  factory ItemVariantResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemVariantResponseFromJson(json);
}

@freezed
class ItemOptionResponse with _$ItemOptionResponse {
  factory ItemOptionResponse({
    required int id,
    required String name,
    required int itemId,
    required List<String> options,
  }) = _ItemOptionResponse;

  factory ItemOptionResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemOptionResponseFromJson(json);
}
