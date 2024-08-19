// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductRequestImpl _$$ProductRequestImplFromJson(Map<String, dynamic> json) =>
    _$ProductRequestImpl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      categoryId: (json['categoryId'] as num).toInt(),
      variants: (json['variants'] as List<dynamic>)
          .map((e) => ItemVariantRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      options:
          ItemOptionRequest.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductRequestImplToJson(
        _$ProductRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'categoryId': instance.categoryId,
      'variants': instance.variants,
      'options': instance.options,
    };

_$ItemVariantRequestImpl _$$ItemVariantRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemVariantRequestImpl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ItemVariantRequestImplToJson(
        _$ItemVariantRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };

_$ItemOptionRequestImpl _$$ItemOptionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemOptionRequestImpl(
      name: json['name'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ItemOptionRequestImplToJson(
        _$ItemOptionRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'options': instance.options,
    };
