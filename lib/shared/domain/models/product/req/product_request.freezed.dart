// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductRequest _$ProductRequestFromJson(Map<String, dynamic> json) {
  return _ProductRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductRequest {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  List<ItemVariantRequest> get variants => throw _privateConstructorUsedError;
  ItemOptionRequest get options => throw _privateConstructorUsedError;

  /// Serializes this ProductRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductRequestCopyWith<ProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRequestCopyWith<$Res> {
  factory $ProductRequestCopyWith(
          ProductRequest value, $Res Function(ProductRequest) then) =
      _$ProductRequestCopyWithImpl<$Res, ProductRequest>;
  @useResult
  $Res call(
      {String name,
      double price,
      int categoryId,
      List<ItemVariantRequest> variants,
      ItemOptionRequest options});

  $ItemOptionRequestCopyWith<$Res> get options;
}

/// @nodoc
class _$ProductRequestCopyWithImpl<$Res, $Val extends ProductRequest>
    implements $ProductRequestCopyWith<$Res> {
  _$ProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? categoryId = null,
    Object? variants = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
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
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ItemVariantRequest>,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ItemOptionRequest,
    ) as $Val);
  }

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemOptionRequestCopyWith<$Res> get options {
    return $ItemOptionRequestCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductRequestImplCopyWith<$Res>
    implements $ProductRequestCopyWith<$Res> {
  factory _$$ProductRequestImplCopyWith(_$ProductRequestImpl value,
          $Res Function(_$ProductRequestImpl) then) =
      __$$ProductRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double price,
      int categoryId,
      List<ItemVariantRequest> variants,
      ItemOptionRequest options});

  @override
  $ItemOptionRequestCopyWith<$Res> get options;
}

/// @nodoc
class __$$ProductRequestImplCopyWithImpl<$Res>
    extends _$ProductRequestCopyWithImpl<$Res, _$ProductRequestImpl>
    implements _$$ProductRequestImplCopyWith<$Res> {
  __$$ProductRequestImplCopyWithImpl(
      _$ProductRequestImpl _value, $Res Function(_$ProductRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? categoryId = null,
    Object? variants = null,
    Object? options = null,
  }) {
    return _then(_$ProductRequestImpl(
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
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ItemVariantRequest>,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ItemOptionRequest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductRequestImpl implements _ProductRequest {
  _$ProductRequestImpl(
      {required this.name,
      required this.price,
      required this.categoryId,
      required final List<ItemVariantRequest> variants,
      required this.options})
      : _variants = variants;

  factory _$ProductRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductRequestImplFromJson(json);

  @override
  final String name;
  @override
  final double price;
  @override
  final int categoryId;
  final List<ItemVariantRequest> _variants;
  @override
  List<ItemVariantRequest> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  final ItemOptionRequest options;

  @override
  String toString() {
    return 'ProductRequest(name: $name, price: $price, categoryId: $categoryId, variants: $variants, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, categoryId,
      const DeepCollectionEquality().hash(_variants), options);

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRequestImplCopyWith<_$ProductRequestImpl> get copyWith =>
      __$$ProductRequestImplCopyWithImpl<_$ProductRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductRequest implements ProductRequest {
  factory _ProductRequest(
      {required final String name,
      required final double price,
      required final int categoryId,
      required final List<ItemVariantRequest> variants,
      required final ItemOptionRequest options}) = _$ProductRequestImpl;

  factory _ProductRequest.fromJson(Map<String, dynamic> json) =
      _$ProductRequestImpl.fromJson;

  @override
  String get name;
  @override
  double get price;
  @override
  int get categoryId;
  @override
  List<ItemVariantRequest> get variants;
  @override
  ItemOptionRequest get options;

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductRequestImplCopyWith<_$ProductRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemVariantRequest _$ItemVariantRequestFromJson(Map<String, dynamic> json) {
  return _ItemVariantRequest.fromJson(json);
}

/// @nodoc
mixin _$ItemVariantRequest {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Serializes this ItemVariantRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemVariantRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemVariantRequestCopyWith<ItemVariantRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemVariantRequestCopyWith<$Res> {
  factory $ItemVariantRequestCopyWith(
          ItemVariantRequest value, $Res Function(ItemVariantRequest) then) =
      _$ItemVariantRequestCopyWithImpl<$Res, ItemVariantRequest>;
  @useResult
  $Res call({String name, double price});
}

/// @nodoc
class _$ItemVariantRequestCopyWithImpl<$Res, $Val extends ItemVariantRequest>
    implements $ItemVariantRequestCopyWith<$Res> {
  _$ItemVariantRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemVariantRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemVariantRequestImplCopyWith<$Res>
    implements $ItemVariantRequestCopyWith<$Res> {
  factory _$$ItemVariantRequestImplCopyWith(_$ItemVariantRequestImpl value,
          $Res Function(_$ItemVariantRequestImpl) then) =
      __$$ItemVariantRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double price});
}

/// @nodoc
class __$$ItemVariantRequestImplCopyWithImpl<$Res>
    extends _$ItemVariantRequestCopyWithImpl<$Res, _$ItemVariantRequestImpl>
    implements _$$ItemVariantRequestImplCopyWith<$Res> {
  __$$ItemVariantRequestImplCopyWithImpl(_$ItemVariantRequestImpl _value,
      $Res Function(_$ItemVariantRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemVariantRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$ItemVariantRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemVariantRequestImpl implements _ItemVariantRequest {
  _$ItemVariantRequestImpl({required this.name, required this.price});

  factory _$ItemVariantRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemVariantRequestImplFromJson(json);

  @override
  final String name;
  @override
  final double price;

  @override
  String toString() {
    return 'ItemVariantRequest(name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemVariantRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, price);

  /// Create a copy of ItemVariantRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemVariantRequestImplCopyWith<_$ItemVariantRequestImpl> get copyWith =>
      __$$ItemVariantRequestImplCopyWithImpl<_$ItemVariantRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemVariantRequestImplToJson(
      this,
    );
  }
}

abstract class _ItemVariantRequest implements ItemVariantRequest {
  factory _ItemVariantRequest(
      {required final String name,
      required final double price}) = _$ItemVariantRequestImpl;

  factory _ItemVariantRequest.fromJson(Map<String, dynamic> json) =
      _$ItemVariantRequestImpl.fromJson;

  @override
  String get name;
  @override
  double get price;

  /// Create a copy of ItemVariantRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemVariantRequestImplCopyWith<_$ItemVariantRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemOptionRequest _$ItemOptionRequestFromJson(Map<String, dynamic> json) {
  return _ItemOptionRequest.fromJson(json);
}

/// @nodoc
mixin _$ItemOptionRequest {
  String get name => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;

  /// Serializes this ItemOptionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemOptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemOptionRequestCopyWith<ItemOptionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemOptionRequestCopyWith<$Res> {
  factory $ItemOptionRequestCopyWith(
          ItemOptionRequest value, $Res Function(ItemOptionRequest) then) =
      _$ItemOptionRequestCopyWithImpl<$Res, ItemOptionRequest>;
  @useResult
  $Res call({String name, List<String> options});
}

/// @nodoc
class _$ItemOptionRequestCopyWithImpl<$Res, $Val extends ItemOptionRequest>
    implements $ItemOptionRequestCopyWith<$Res> {
  _$ItemOptionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemOptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemOptionRequestImplCopyWith<$Res>
    implements $ItemOptionRequestCopyWith<$Res> {
  factory _$$ItemOptionRequestImplCopyWith(_$ItemOptionRequestImpl value,
          $Res Function(_$ItemOptionRequestImpl) then) =
      __$$ItemOptionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> options});
}

/// @nodoc
class __$$ItemOptionRequestImplCopyWithImpl<$Res>
    extends _$ItemOptionRequestCopyWithImpl<$Res, _$ItemOptionRequestImpl>
    implements _$$ItemOptionRequestImplCopyWith<$Res> {
  __$$ItemOptionRequestImplCopyWithImpl(_$ItemOptionRequestImpl _value,
      $Res Function(_$ItemOptionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemOptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_$ItemOptionRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemOptionRequestImpl implements _ItemOptionRequest {
  _$ItemOptionRequestImpl(
      {required this.name, required final List<String> options})
      : _options = options;

  factory _$ItemOptionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemOptionRequestImplFromJson(json);

  @override
  final String name;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ItemOptionRequest(name: $name, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemOptionRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_options));

  /// Create a copy of ItemOptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemOptionRequestImplCopyWith<_$ItemOptionRequestImpl> get copyWith =>
      __$$ItemOptionRequestImplCopyWithImpl<_$ItemOptionRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemOptionRequestImplToJson(
      this,
    );
  }
}

abstract class _ItemOptionRequest implements ItemOptionRequest {
  factory _ItemOptionRequest(
      {required final String name,
      required final List<String> options}) = _$ItemOptionRequestImpl;

  factory _ItemOptionRequest.fromJson(Map<String, dynamic> json) =
      _$ItemOptionRequestImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get options;

  /// Create a copy of ItemOptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemOptionRequestImplCopyWith<_$ItemOptionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
