// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      variants: (json['itemVariants'] as List<dynamic>)
          .map((e) => ItemVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
      options: (json['itemOptions'] as List<dynamic>)
          .map((e) => ItemOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'categoryId': instance.categoryId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'category': instance.category,
      'itemVariants': instance.variants,
      'itemOptions': instance.options,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ItemVariantImpl _$$ItemVariantImplFromJson(Map<String, dynamic> json) =>
    _$ItemVariantImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      itemId: (json['itemId'] as num).toInt(),
    );

Map<String, dynamic> _$$ItemVariantImplToJson(_$ItemVariantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'itemId': instance.itemId,
    };

_$ItemOptionImpl _$$ItemOptionImplFromJson(Map<String, dynamic> json) =>
    _$ItemOptionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      itemId: (json['itemId'] as num).toInt(),
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ItemOptionImplToJson(_$ItemOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'itemId': instance.itemId,
      'options': instance.options,
    };
