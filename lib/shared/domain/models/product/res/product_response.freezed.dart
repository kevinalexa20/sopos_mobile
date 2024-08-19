// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  CategoryResponse get category => throw _privateConstructorUsedError;
  List<ItemVariantResponse> get itemVariants =>
      throw _privateConstructorUsedError;
  List<ItemOptionResponse> get itemOptions =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      int categoryId,
      DateTime createdAt,
      DateTime updatedAt,
      CategoryResponse category,
      List<ItemVariantResponse> itemVariants,
      List<ItemOptionResponse> itemOptions});

  $CategoryResponseCopyWith<$Res> get category;
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? categoryId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = null,
    Object? itemVariants = null,
    Object? itemOptions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryResponse,
      itemVariants: null == itemVariants
          ? _value.itemVariants
          : itemVariants // ignore: cast_nullable_to_non_nullable
              as List<ItemVariantResponse>,
      itemOptions: null == itemOptions
          ? _value.itemOptions
          : itemOptions // ignore: cast_nullable_to_non_nullable
              as List<ItemOptionResponse>,
    ) as $Val);
  }

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryResponseCopyWith<$Res> get category {
    return $CategoryResponseCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(_$ProductResponseImpl value,
          $Res Function(_$ProductResponseImpl) then) =
      __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      int categoryId,
      DateTime createdAt,
      DateTime updatedAt,
      CategoryResponse category,
      List<ItemVariantResponse> itemVariants,
      List<ItemOptionResponse> itemOptions});

  @override
  $CategoryResponseCopyWith<$Res> get category;
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
      _$ProductResponseImpl _value, $Res Function(_$ProductResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? categoryId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = null,
    Object? itemVariants = null,
    Object? itemOptions = null,
  }) {
    return _then(_$ProductResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryResponse,
      itemVariants: null == itemVariants
          ? _value._itemVariants
          : itemVariants // ignore: cast_nullable_to_non_nullable
              as List<ItemVariantResponse>,
      itemOptions: null == itemOptions
          ? _value._itemOptions
          : itemOptions // ignore: cast_nullable_to_non_nullable
              as List<ItemOptionResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  _$ProductResponseImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.categoryId,
      required this.createdAt,
      required this.updatedAt,
      required this.category,
      required final List<ItemVariantResponse> itemVariants,
      required final List<ItemOptionResponse> itemOptions})
      : _itemVariants = itemVariants,
        _itemOptions = itemOptions;

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final int categoryId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final CategoryResponse category;
  final List<ItemVariantResponse> _itemVariants;
  @override
  List<ItemVariantResponse> get itemVariants {
    if (_itemVariants is EqualUnmodifiableListView) return _itemVariants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemVariants);
  }

  final List<ItemOptionResponse> _itemOptions;
  @override
  List<ItemOptionResponse> get itemOptions {
    if (_itemOptions is EqualUnmodifiableListView) return _itemOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemOptions);
  }

  @override
  String toString() {
    return 'ProductResponse(id: $id, name: $name, price: $price, categoryId: $categoryId, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, itemVariants: $itemVariants, itemOptions: $itemOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._itemVariants, _itemVariants) &&
            const DeepCollectionEquality()
                .equals(other._itemOptions, _itemOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      categoryId,
      createdAt,
      updatedAt,
      category,
      const DeepCollectionEquality().hash(_itemVariants),
      const DeepCollectionEquality().hash(_itemOptions));

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductResponse implements ProductResponse {
  factory _ProductResponse(
          {required final int id,
          required final String name,
          required final double price,
          required final int categoryId,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          required final CategoryResponse category,
          required final List<ItemVariantResponse> itemVariants,
          required final List<ItemOptionResponse> itemOptions}) =
      _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  int get categoryId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  CategoryResponse get category;
  @override
  List<ItemVariantResponse> get itemVariants;
  @override
  List<ItemOptionResponse> get itemOptions;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseImplCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$CategoryResponseImplCopyWith(_$CategoryResponseImpl value,
          $Res Function(_$CategoryResponseImpl) then) =
      __$$CategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CategoryResponseImplCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$CategoryResponseImpl>
    implements _$$CategoryResponseImplCopyWith<$Res> {
  __$$CategoryResponseImplCopyWithImpl(_$CategoryResponseImpl _value,
      $Res Function(_$CategoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseImpl implements _CategoryResponse {
  _$CategoryResponseImpl({required this.id, required this.name});

  factory _$CategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoryResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      __$$CategoryResponseImplCopyWithImpl<_$CategoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  factory _CategoryResponse(
      {required final int id,
      required final String name}) = _$CategoryResponseImpl;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemVariantResponse _$ItemVariantResponseFromJson(Map<String, dynamic> json) {
  return _ItemVariantResponse.fromJson(json);
}

/// @nodoc
mixin _$ItemVariantResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get itemId => throw _privateConstructorUsedError;

  /// Serializes this ItemVariantResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemVariantResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemVariantResponseCopyWith<ItemVariantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemVariantResponseCopyWith<$Res> {
  factory $ItemVariantResponseCopyWith(
          ItemVariantResponse value, $Res Function(ItemVariantResponse) then) =
      _$ItemVariantResponseCopyWithImpl<$Res, ItemVariantResponse>;
  @useResult
  $Res call({int id, String name, double price, int itemId});
}

/// @nodoc
class _$ItemVariantResponseCopyWithImpl<$Res, $Val extends ItemVariantResponse>
    implements $ItemVariantResponseCopyWith<$Res> {
  _$ItemVariantResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemVariantResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? itemId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemVariantResponseImplCopyWith<$Res>
    implements $ItemVariantResponseCopyWith<$Res> {
  factory _$$ItemVariantResponseImplCopyWith(_$ItemVariantResponseImpl value,
          $Res Function(_$ItemVariantResponseImpl) then) =
      __$$ItemVariantResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, double price, int itemId});
}

/// @nodoc
class __$$ItemVariantResponseImplCopyWithImpl<$Res>
    extends _$ItemVariantResponseCopyWithImpl<$Res, _$ItemVariantResponseImpl>
    implements _$$ItemVariantResponseImplCopyWith<$Res> {
  __$$ItemVariantResponseImplCopyWithImpl(_$ItemVariantResponseImpl _value,
      $Res Function(_$ItemVariantResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemVariantResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? itemId = null,
  }) {
    return _then(_$ItemVariantResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemVariantResponseImpl implements _ItemVariantResponse {
  _$ItemVariantResponseImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.itemId});

  factory _$ItemVariantResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemVariantResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final int itemId;

  @override
  String toString() {
    return 'ItemVariantResponse(id: $id, name: $name, price: $price, itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemVariantResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, itemId);

  /// Create a copy of ItemVariantResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemVariantResponseImplCopyWith<_$ItemVariantResponseImpl> get copyWith =>
      __$$ItemVariantResponseImplCopyWithImpl<_$ItemVariantResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemVariantResponseImplToJson(
      this,
    );
  }
}

abstract class _ItemVariantResponse implements ItemVariantResponse {
  factory _ItemVariantResponse(
      {required final int id,
      required final String name,
      required final double price,
      required final int itemId}) = _$ItemVariantResponseImpl;

  factory _ItemVariantResponse.fromJson(Map<String, dynamic> json) =
      _$ItemVariantResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  int get itemId;

  /// Create a copy of ItemVariantResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemVariantResponseImplCopyWith<_$ItemVariantResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemOptionResponse _$ItemOptionResponseFromJson(Map<String, dynamic> json) {
  return _ItemOptionResponse.fromJson(json);
}

/// @nodoc
mixin _$ItemOptionResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get itemId => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;

  /// Serializes this ItemOptionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemOptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemOptionResponseCopyWith<ItemOptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemOptionResponseCopyWith<$Res> {
  factory $ItemOptionResponseCopyWith(
          ItemOptionResponse value, $Res Function(ItemOptionResponse) then) =
      _$ItemOptionResponseCopyWithImpl<$Res, ItemOptionResponse>;
  @useResult
  $Res call({int id, String name, int itemId, List<String> options});
}

/// @nodoc
class _$ItemOptionResponseCopyWithImpl<$Res, $Val extends ItemOptionResponse>
    implements $ItemOptionResponseCopyWith<$Res> {
  _$ItemOptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemOptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? itemId = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemOptionResponseImplCopyWith<$Res>
    implements $ItemOptionResponseCopyWith<$Res> {
  factory _$$ItemOptionResponseImplCopyWith(_$ItemOptionResponseImpl value,
          $Res Function(_$ItemOptionResponseImpl) then) =
      __$$ItemOptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int itemId, List<String> options});
}

/// @nodoc
class __$$ItemOptionResponseImplCopyWithImpl<$Res>
    extends _$ItemOptionResponseCopyWithImpl<$Res, _$ItemOptionResponseImpl>
    implements _$$ItemOptionResponseImplCopyWith<$Res> {
  __$$ItemOptionResponseImplCopyWithImpl(_$ItemOptionResponseImpl _value,
      $Res Function(_$ItemOptionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemOptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? itemId = null,
    Object? options = null,
  }) {
    return _then(_$ItemOptionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemOptionResponseImpl implements _ItemOptionResponse {
  _$ItemOptionResponseImpl(
      {required this.id,
      required this.name,
      required this.itemId,
      required final List<String> options})
      : _options = options;

  factory _$ItemOptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemOptionResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int itemId;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ItemOptionResponse(id: $id, name: $name, itemId: $itemId, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemOptionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, itemId,
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of ItemOptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemOptionResponseImplCopyWith<_$ItemOptionResponseImpl> get copyWith =>
      __$$ItemOptionResponseImplCopyWithImpl<_$ItemOptionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemOptionResponseImplToJson(
      this,
    );
  }
}

abstract class _ItemOptionResponse implements ItemOptionResponse {
  factory _ItemOptionResponse(
      {required final int id,
      required final String name,
      required final int itemId,
      required final List<String> options}) = _$ItemOptionResponseImpl;

  factory _ItemOptionResponse.fromJson(Map<String, dynamic> json) =
      _$ItemOptionResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get itemId;
  @override
  List<String> get options;

  /// Create a copy of ItemOptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemOptionResponseImplCopyWith<_$ItemOptionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
