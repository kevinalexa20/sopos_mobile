import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_request.freezed.dart';
part 'product_request.g.dart';

@freezed
class ProductRequest with _$ProductRequest {
  factory ProductRequest({
    required String name,
    required double price,
    required int categoryId,
    required List<ItemVariantRequest> variants,
    required ItemOptionRequest options,
  }) = _ProductRequest;

  factory ProductRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestFromJson(json);
}

@freezed
class ItemVariantRequest with _$ItemVariantRequest {
  factory ItemVariantRequest({
    required String name,
    required double price,
  }) = _ItemVariantRequest;

  factory ItemVariantRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemVariantRequestFromJson(json);
}

@freezed
class ItemOptionRequest with _$ItemOptionRequest {
  factory ItemOptionRequest({
    required String name,
    required List<String> options,
  }) = _ItemOptionRequest;

  factory ItemOptionRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemOptionRequestFromJson(json);
}
