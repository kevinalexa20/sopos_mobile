// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      categoryId: (json['categoryId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      category:
          CategoryResponse.fromJson(json['category'] as Map<String, dynamic>),
      itemVariants: (json['itemVariants'] as List<dynamic>)
          .map((e) => ItemVariantResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemOptions: (json['itemOptions'] as List<dynamic>)
          .map((e) => ItemOptionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'categoryId': instance.categoryId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'category': instance.category,
      'itemVariants': instance.itemVariants,
      'itemOptions': instance.itemOptions,
    };

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryResponseImplToJson(
        _$CategoryResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ItemVariantResponseImpl _$$ItemVariantResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemVariantResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      itemId: (json['itemId'] as num).toInt(),
    );

Map<String, dynamic> _$$ItemVariantResponseImplToJson(
        _$ItemVariantResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'itemId': instance.itemId,
    };

_$ItemOptionResponseImpl _$$ItemOptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemOptionResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      itemId: (json['itemId'] as num).toInt(),
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ItemOptionResponseImplToJson(
        _$ItemOptionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'itemId': instance.itemId,
      'options': instance.options,
    };
