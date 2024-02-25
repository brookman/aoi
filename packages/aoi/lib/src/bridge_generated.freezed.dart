// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bridge_generated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AoiPeripheralAddress {
  Object get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U8Array6 field0) macAddress,
    required TResult Function(String field0) uuid,
    required TResult Function(String field0) deviceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U8Array6 field0)? macAddress,
    TResult? Function(String field0)? uuid,
    TResult? Function(String field0)? deviceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U8Array6 field0)? macAddress,
    TResult Function(String field0)? uuid,
    TResult Function(String field0)? deviceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AoiPeripheralAddress_MacAddress value) macAddress,
    required TResult Function(AoiPeripheralAddress_Uuid value) uuid,
    required TResult Function(AoiPeripheralAddress_DeviceId value) deviceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AoiPeripheralAddress_MacAddress value)? macAddress,
    TResult? Function(AoiPeripheralAddress_Uuid value)? uuid,
    TResult? Function(AoiPeripheralAddress_DeviceId value)? deviceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AoiPeripheralAddress_MacAddress value)? macAddress,
    TResult Function(AoiPeripheralAddress_Uuid value)? uuid,
    TResult Function(AoiPeripheralAddress_DeviceId value)? deviceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AoiPeripheralAddressCopyWith<$Res> {
  factory $AoiPeripheralAddressCopyWith(AoiPeripheralAddress value, $Res Function(AoiPeripheralAddress) then) = _$AoiPeripheralAddressCopyWithImpl<$Res, AoiPeripheralAddress>;
}

/// @nodoc
class _$AoiPeripheralAddressCopyWithImpl<$Res, $Val extends AoiPeripheralAddress> implements $AoiPeripheralAddressCopyWith<$Res> {
  _$AoiPeripheralAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AoiPeripheralAddress_MacAddressImplCopyWith<$Res> {
  factory _$$AoiPeripheralAddress_MacAddressImplCopyWith(_$AoiPeripheralAddress_MacAddressImpl value, $Res Function(_$AoiPeripheralAddress_MacAddressImpl) then) = __$$AoiPeripheralAddress_MacAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({U8Array6 field0});
}

/// @nodoc
class __$$AoiPeripheralAddress_MacAddressImplCopyWithImpl<$Res> extends _$AoiPeripheralAddressCopyWithImpl<$Res, _$AoiPeripheralAddress_MacAddressImpl> implements _$$AoiPeripheralAddress_MacAddressImplCopyWith<$Res> {
  __$$AoiPeripheralAddress_MacAddressImplCopyWithImpl(_$AoiPeripheralAddress_MacAddressImpl _value, $Res Function(_$AoiPeripheralAddress_MacAddressImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$AoiPeripheralAddress_MacAddressImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as U8Array6,
    ));
  }
}

/// @nodoc

class _$AoiPeripheralAddress_MacAddressImpl implements AoiPeripheralAddress_MacAddress {
  const _$AoiPeripheralAddress_MacAddressImpl(this.field0);

  @override
  final U8Array6 field0;

  @override
  String toString() {
    return 'AoiPeripheralAddress.macAddress(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$AoiPeripheralAddress_MacAddressImpl && const DeepCollectionEquality().equals(other.field0, field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AoiPeripheralAddress_MacAddressImplCopyWith<_$AoiPeripheralAddress_MacAddressImpl> get copyWith => __$$AoiPeripheralAddress_MacAddressImplCopyWithImpl<_$AoiPeripheralAddress_MacAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U8Array6 field0) macAddress,
    required TResult Function(String field0) uuid,
    required TResult Function(String field0) deviceId,
  }) {
    return macAddress(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U8Array6 field0)? macAddress,
    TResult? Function(String field0)? uuid,
    TResult? Function(String field0)? deviceId,
  }) {
    return macAddress?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U8Array6 field0)? macAddress,
    TResult Function(String field0)? uuid,
    TResult Function(String field0)? deviceId,
    required TResult orElse(),
  }) {
    if (macAddress != null) {
      return macAddress(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AoiPeripheralAddress_MacAddress value) macAddress,
    required TResult Function(AoiPeripheralAddress_Uuid value) uuid,
    required TResult Function(AoiPeripheralAddress_DeviceId value) deviceId,
  }) {
    return macAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AoiPeripheralAddress_MacAddress value)? macAddress,
    TResult? Function(AoiPeripheralAddress_Uuid value)? uuid,
    TResult? Function(AoiPeripheralAddress_DeviceId value)? deviceId,
  }) {
    return macAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AoiPeripheralAddress_MacAddress value)? macAddress,
    TResult Function(AoiPeripheralAddress_Uuid value)? uuid,
    TResult Function(AoiPeripheralAddress_DeviceId value)? deviceId,
    required TResult orElse(),
  }) {
    if (macAddress != null) {
      return macAddress(this);
    }
    return orElse();
  }
}

abstract class AoiPeripheralAddress_MacAddress implements AoiPeripheralAddress {
  const factory AoiPeripheralAddress_MacAddress(final U8Array6 field0) = _$AoiPeripheralAddress_MacAddressImpl;

  @override
  U8Array6 get field0;
  @JsonKey(ignore: true)
  _$$AoiPeripheralAddress_MacAddressImplCopyWith<_$AoiPeripheralAddress_MacAddressImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AoiPeripheralAddress_UuidImplCopyWith<$Res> {
  factory _$$AoiPeripheralAddress_UuidImplCopyWith(_$AoiPeripheralAddress_UuidImpl value, $Res Function(_$AoiPeripheralAddress_UuidImpl) then) = __$$AoiPeripheralAddress_UuidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$AoiPeripheralAddress_UuidImplCopyWithImpl<$Res> extends _$AoiPeripheralAddressCopyWithImpl<$Res, _$AoiPeripheralAddress_UuidImpl> implements _$$AoiPeripheralAddress_UuidImplCopyWith<$Res> {
  __$$AoiPeripheralAddress_UuidImplCopyWithImpl(_$AoiPeripheralAddress_UuidImpl _value, $Res Function(_$AoiPeripheralAddress_UuidImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$AoiPeripheralAddress_UuidImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AoiPeripheralAddress_UuidImpl implements AoiPeripheralAddress_Uuid {
  const _$AoiPeripheralAddress_UuidImpl(this.field0);

  @override
  final String field0;

  @override
  String toString() {
    return 'AoiPeripheralAddress.uuid(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$AoiPeripheralAddress_UuidImpl && (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AoiPeripheralAddress_UuidImplCopyWith<_$AoiPeripheralAddress_UuidImpl> get copyWith => __$$AoiPeripheralAddress_UuidImplCopyWithImpl<_$AoiPeripheralAddress_UuidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U8Array6 field0) macAddress,
    required TResult Function(String field0) uuid,
    required TResult Function(String field0) deviceId,
  }) {
    return uuid(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U8Array6 field0)? macAddress,
    TResult? Function(String field0)? uuid,
    TResult? Function(String field0)? deviceId,
  }) {
    return uuid?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U8Array6 field0)? macAddress,
    TResult Function(String field0)? uuid,
    TResult Function(String field0)? deviceId,
    required TResult orElse(),
  }) {
    if (uuid != null) {
      return uuid(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AoiPeripheralAddress_MacAddress value) macAddress,
    required TResult Function(AoiPeripheralAddress_Uuid value) uuid,
    required TResult Function(AoiPeripheralAddress_DeviceId value) deviceId,
  }) {
    return uuid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AoiPeripheralAddress_MacAddress value)? macAddress,
    TResult? Function(AoiPeripheralAddress_Uuid value)? uuid,
    TResult? Function(AoiPeripheralAddress_DeviceId value)? deviceId,
  }) {
    return uuid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AoiPeripheralAddress_MacAddress value)? macAddress,
    TResult Function(AoiPeripheralAddress_Uuid value)? uuid,
    TResult Function(AoiPeripheralAddress_DeviceId value)? deviceId,
    required TResult orElse(),
  }) {
    if (uuid != null) {
      return uuid(this);
    }
    return orElse();
  }
}

abstract class AoiPeripheralAddress_Uuid implements AoiPeripheralAddress {
  const factory AoiPeripheralAddress_Uuid(final String field0) = _$AoiPeripheralAddress_UuidImpl;

  @override
  String get field0;
  @JsonKey(ignore: true)
  _$$AoiPeripheralAddress_UuidImplCopyWith<_$AoiPeripheralAddress_UuidImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AoiPeripheralAddress_DeviceIdImplCopyWith<$Res> {
  factory _$$AoiPeripheralAddress_DeviceIdImplCopyWith(_$AoiPeripheralAddress_DeviceIdImpl value, $Res Function(_$AoiPeripheralAddress_DeviceIdImpl) then) = __$$AoiPeripheralAddress_DeviceIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$AoiPeripheralAddress_DeviceIdImplCopyWithImpl<$Res> extends _$AoiPeripheralAddressCopyWithImpl<$Res, _$AoiPeripheralAddress_DeviceIdImpl> implements _$$AoiPeripheralAddress_DeviceIdImplCopyWith<$Res> {
  __$$AoiPeripheralAddress_DeviceIdImplCopyWithImpl(_$AoiPeripheralAddress_DeviceIdImpl _value, $Res Function(_$AoiPeripheralAddress_DeviceIdImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$AoiPeripheralAddress_DeviceIdImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AoiPeripheralAddress_DeviceIdImpl implements AoiPeripheralAddress_DeviceId {
  const _$AoiPeripheralAddress_DeviceIdImpl(this.field0);

  @override
  final String field0;

  @override
  String toString() {
    return 'AoiPeripheralAddress.deviceId(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$AoiPeripheralAddress_DeviceIdImpl && (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AoiPeripheralAddress_DeviceIdImplCopyWith<_$AoiPeripheralAddress_DeviceIdImpl> get copyWith => __$$AoiPeripheralAddress_DeviceIdImplCopyWithImpl<_$AoiPeripheralAddress_DeviceIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U8Array6 field0) macAddress,
    required TResult Function(String field0) uuid,
    required TResult Function(String field0) deviceId,
  }) {
    return deviceId(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U8Array6 field0)? macAddress,
    TResult? Function(String field0)? uuid,
    TResult? Function(String field0)? deviceId,
  }) {
    return deviceId?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U8Array6 field0)? macAddress,
    TResult Function(String field0)? uuid,
    TResult Function(String field0)? deviceId,
    required TResult orElse(),
  }) {
    if (deviceId != null) {
      return deviceId(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AoiPeripheralAddress_MacAddress value) macAddress,
    required TResult Function(AoiPeripheralAddress_Uuid value) uuid,
    required TResult Function(AoiPeripheralAddress_DeviceId value) deviceId,
  }) {
    return deviceId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AoiPeripheralAddress_MacAddress value)? macAddress,
    TResult? Function(AoiPeripheralAddress_Uuid value)? uuid,
    TResult? Function(AoiPeripheralAddress_DeviceId value)? deviceId,
  }) {
    return deviceId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AoiPeripheralAddress_MacAddress value)? macAddress,
    TResult Function(AoiPeripheralAddress_Uuid value)? uuid,
    TResult Function(AoiPeripheralAddress_DeviceId value)? deviceId,
    required TResult orElse(),
  }) {
    if (deviceId != null) {
      return deviceId(this);
    }
    return orElse();
  }
}

abstract class AoiPeripheralAddress_DeviceId implements AoiPeripheralAddress {
  const factory AoiPeripheralAddress_DeviceId(final String field0) = _$AoiPeripheralAddress_DeviceIdImpl;

  @override
  String get field0;
  @JsonKey(ignore: true)
  _$$AoiPeripheralAddress_DeviceIdImplCopyWith<_$AoiPeripheralAddress_DeviceIdImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterCriteria {
  List<FilterCriterion> get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FilterCriterion> field0) any,
    required TResult Function(List<FilterCriterion> field0) all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FilterCriterion> field0)? any,
    TResult? Function(List<FilterCriterion> field0)? all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FilterCriterion> field0)? any,
    TResult Function(List<FilterCriterion> field0)? all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriteria_Any value) any,
    required TResult Function(FilterCriteria_All value) all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriteria_Any value)? any,
    TResult? Function(FilterCriteria_All value)? all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriteria_Any value)? any,
    TResult Function(FilterCriteria_All value)? all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCriteriaCopyWith<FilterCriteria> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCriteriaCopyWith<$Res> {
  factory $FilterCriteriaCopyWith(FilterCriteria value, $Res Function(FilterCriteria) then) = _$FilterCriteriaCopyWithImpl<$Res, FilterCriteria>;
  @useResult
  $Res call({List<FilterCriterion> field0});
}

/// @nodoc
class _$FilterCriteriaCopyWithImpl<$Res, $Val extends FilterCriteria> implements $FilterCriteriaCopyWith<$Res> {
  _$FilterCriteriaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_value.copyWith(
      field0: null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as List<FilterCriterion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterCriteria_AnyImplCopyWith<$Res> implements $FilterCriteriaCopyWith<$Res> {
  factory _$$FilterCriteria_AnyImplCopyWith(_$FilterCriteria_AnyImpl value, $Res Function(_$FilterCriteria_AnyImpl) then) = __$$FilterCriteria_AnyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FilterCriterion> field0});
}

/// @nodoc
class __$$FilterCriteria_AnyImplCopyWithImpl<$Res> extends _$FilterCriteriaCopyWithImpl<$Res, _$FilterCriteria_AnyImpl> implements _$$FilterCriteria_AnyImplCopyWith<$Res> {
  __$$FilterCriteria_AnyImplCopyWithImpl(_$FilterCriteria_AnyImpl _value, $Res Function(_$FilterCriteria_AnyImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$FilterCriteria_AnyImpl(
      null == field0
          ? _value._field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as List<FilterCriterion>,
    ));
  }
}

/// @nodoc

class _$FilterCriteria_AnyImpl implements FilterCriteria_Any {
  const _$FilterCriteria_AnyImpl(final List<FilterCriterion> field0) : _field0 = field0;

  final List<FilterCriterion> _field0;
  @override
  List<FilterCriterion> get field0 {
    if (_field0 is EqualUnmodifiableListView) return _field0;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_field0);
  }

  @override
  String toString() {
    return 'FilterCriteria.any(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FilterCriteria_AnyImpl && const DeepCollectionEquality().equals(other._field0, _field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_field0));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCriteria_AnyImplCopyWith<_$FilterCriteria_AnyImpl> get copyWith => __$$FilterCriteria_AnyImplCopyWithImpl<_$FilterCriteria_AnyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FilterCriterion> field0) any,
    required TResult Function(List<FilterCriterion> field0) all,
  }) {
    return any(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FilterCriterion> field0)? any,
    TResult? Function(List<FilterCriterion> field0)? all,
  }) {
    return any?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FilterCriterion> field0)? any,
    TResult Function(List<FilterCriterion> field0)? all,
    required TResult orElse(),
  }) {
    if (any != null) {
      return any(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriteria_Any value) any,
    required TResult Function(FilterCriteria_All value) all,
  }) {
    return any(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriteria_Any value)? any,
    TResult? Function(FilterCriteria_All value)? all,
  }) {
    return any?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriteria_Any value)? any,
    TResult Function(FilterCriteria_All value)? all,
    required TResult orElse(),
  }) {
    if (any != null) {
      return any(this);
    }
    return orElse();
  }
}

abstract class FilterCriteria_Any implements FilterCriteria {
  const factory FilterCriteria_Any(final List<FilterCriterion> field0) = _$FilterCriteria_AnyImpl;

  @override
  List<FilterCriterion> get field0;
  @override
  @JsonKey(ignore: true)
  _$$FilterCriteria_AnyImplCopyWith<_$FilterCriteria_AnyImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterCriteria_AllImplCopyWith<$Res> implements $FilterCriteriaCopyWith<$Res> {
  factory _$$FilterCriteria_AllImplCopyWith(_$FilterCriteria_AllImpl value, $Res Function(_$FilterCriteria_AllImpl) then) = __$$FilterCriteria_AllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FilterCriterion> field0});
}

/// @nodoc
class __$$FilterCriteria_AllImplCopyWithImpl<$Res> extends _$FilterCriteriaCopyWithImpl<$Res, _$FilterCriteria_AllImpl> implements _$$FilterCriteria_AllImplCopyWith<$Res> {
  __$$FilterCriteria_AllImplCopyWithImpl(_$FilterCriteria_AllImpl _value, $Res Function(_$FilterCriteria_AllImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$FilterCriteria_AllImpl(
      null == field0
          ? _value._field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as List<FilterCriterion>,
    ));
  }
}

/// @nodoc

class _$FilterCriteria_AllImpl implements FilterCriteria_All {
  const _$FilterCriteria_AllImpl(final List<FilterCriterion> field0) : _field0 = field0;

  final List<FilterCriterion> _field0;
  @override
  List<FilterCriterion> get field0 {
    if (_field0 is EqualUnmodifiableListView) return _field0;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_field0);
  }

  @override
  String toString() {
    return 'FilterCriteria.all(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FilterCriteria_AllImpl && const DeepCollectionEquality().equals(other._field0, _field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_field0));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCriteria_AllImplCopyWith<_$FilterCriteria_AllImpl> get copyWith => __$$FilterCriteria_AllImplCopyWithImpl<_$FilterCriteria_AllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FilterCriterion> field0) any,
    required TResult Function(List<FilterCriterion> field0) all,
  }) {
    return all(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FilterCriterion> field0)? any,
    TResult? Function(List<FilterCriterion> field0)? all,
  }) {
    return all?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FilterCriterion> field0)? any,
    TResult Function(List<FilterCriterion> field0)? all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriteria_Any value) any,
    required TResult Function(FilterCriteria_All value) all,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriteria_Any value)? any,
    TResult? Function(FilterCriteria_All value)? all,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriteria_Any value)? any,
    TResult Function(FilterCriteria_All value)? all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class FilterCriteria_All implements FilterCriteria {
  const factory FilterCriteria_All(final List<FilterCriterion> field0) = _$FilterCriteria_AllImpl;

  @override
  List<FilterCriterion> get field0;
  @override
  @JsonKey(ignore: true)
  _$$FilterCriteria_AllImplCopyWith<_$FilterCriteria_AllImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterCriterion {
  Object get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) hasServiceUuid,
    required TResult Function(String field0) nameMatchesExactly,
    required TResult Function(String field0) nameContains,
    required TResult Function(int field0) manufacturerId,
    required TResult Function(int field0, Uint8List field1) manufacturerData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? hasServiceUuid,
    TResult? Function(String field0)? nameMatchesExactly,
    TResult? Function(String field0)? nameContains,
    TResult? Function(int field0)? manufacturerId,
    TResult? Function(int field0, Uint8List field1)? manufacturerData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? hasServiceUuid,
    TResult Function(String field0)? nameMatchesExactly,
    TResult Function(String field0)? nameContains,
    TResult Function(int field0)? manufacturerId,
    TResult Function(int field0, Uint8List field1)? manufacturerData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriterion_HasServiceUuid value) hasServiceUuid,
    required TResult Function(FilterCriterion_NameMatchesExactly value) nameMatchesExactly,
    required TResult Function(FilterCriterion_NameContains value) nameContains,
    required TResult Function(FilterCriterion_ManufacturerId value) manufacturerId,
    required TResult Function(FilterCriterion_ManufacturerData value) manufacturerData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult? Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult? Function(FilterCriterion_NameContains value)? nameContains,
    TResult? Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult? Function(FilterCriterion_ManufacturerData value)? manufacturerData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult Function(FilterCriterion_NameContains value)? nameContains,
    TResult Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult Function(FilterCriterion_ManufacturerData value)? manufacturerData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCriterionCopyWith<$Res> {
  factory $FilterCriterionCopyWith(FilterCriterion value, $Res Function(FilterCriterion) then) = _$FilterCriterionCopyWithImpl<$Res, FilterCriterion>;
}

/// @nodoc
class _$FilterCriterionCopyWithImpl<$Res, $Val extends FilterCriterion> implements $FilterCriterionCopyWith<$Res> {
  _$FilterCriterionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FilterCriterion_HasServiceUuidImplCopyWith<$Res> {
  factory _$$FilterCriterion_HasServiceUuidImplCopyWith(_$FilterCriterion_HasServiceUuidImpl value, $Res Function(_$FilterCriterion_HasServiceUuidImpl) then) = __$$FilterCriterion_HasServiceUuidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$FilterCriterion_HasServiceUuidImplCopyWithImpl<$Res> extends _$FilterCriterionCopyWithImpl<$Res, _$FilterCriterion_HasServiceUuidImpl> implements _$$FilterCriterion_HasServiceUuidImplCopyWith<$Res> {
  __$$FilterCriterion_HasServiceUuidImplCopyWithImpl(_$FilterCriterion_HasServiceUuidImpl _value, $Res Function(_$FilterCriterion_HasServiceUuidImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$FilterCriterion_HasServiceUuidImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterCriterion_HasServiceUuidImpl implements FilterCriterion_HasServiceUuid {
  const _$FilterCriterion_HasServiceUuidImpl(this.field0);

  @override
  final String field0;

  @override
  String toString() {
    return 'FilterCriterion.hasServiceUuid(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FilterCriterion_HasServiceUuidImpl && (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCriterion_HasServiceUuidImplCopyWith<_$FilterCriterion_HasServiceUuidImpl> get copyWith => __$$FilterCriterion_HasServiceUuidImplCopyWithImpl<_$FilterCriterion_HasServiceUuidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) hasServiceUuid,
    required TResult Function(String field0) nameMatchesExactly,
    required TResult Function(String field0) nameContains,
    required TResult Function(int field0) manufacturerId,
    required TResult Function(int field0, Uint8List field1) manufacturerData,
  }) {
    return hasServiceUuid(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? hasServiceUuid,
    TResult? Function(String field0)? nameMatchesExactly,
    TResult? Function(String field0)? nameContains,
    TResult? Function(int field0)? manufacturerId,
    TResult? Function(int field0, Uint8List field1)? manufacturerData,
  }) {
    return hasServiceUuid?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? hasServiceUuid,
    TResult Function(String field0)? nameMatchesExactly,
    TResult Function(String field0)? nameContains,
    TResult Function(int field0)? manufacturerId,
    TResult Function(int field0, Uint8List field1)? manufacturerData,
    required TResult orElse(),
  }) {
    if (hasServiceUuid != null) {
      return hasServiceUuid(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriterion_HasServiceUuid value) hasServiceUuid,
    required TResult Function(FilterCriterion_NameMatchesExactly value) nameMatchesExactly,
    required TResult Function(FilterCriterion_NameContains value) nameContains,
    required TResult Function(FilterCriterion_ManufacturerId value) manufacturerId,
    required TResult Function(FilterCriterion_ManufacturerData value) manufacturerData,
  }) {
    return hasServiceUuid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult? Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult? Function(FilterCriterion_NameContains value)? nameContains,
    TResult? Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult? Function(FilterCriterion_ManufacturerData value)? manufacturerData,
  }) {
    return hasServiceUuid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult Function(FilterCriterion_NameContains value)? nameContains,
    TResult Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult Function(FilterCriterion_ManufacturerData value)? manufacturerData,
    required TResult orElse(),
  }) {
    if (hasServiceUuid != null) {
      return hasServiceUuid(this);
    }
    return orElse();
  }
}

abstract class FilterCriterion_HasServiceUuid implements FilterCriterion {
  const factory FilterCriterion_HasServiceUuid(final String field0) = _$FilterCriterion_HasServiceUuidImpl;

  @override
  String get field0;
  @JsonKey(ignore: true)
  _$$FilterCriterion_HasServiceUuidImplCopyWith<_$FilterCriterion_HasServiceUuidImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterCriterion_NameMatchesExactlyImplCopyWith<$Res> {
  factory _$$FilterCriterion_NameMatchesExactlyImplCopyWith(_$FilterCriterion_NameMatchesExactlyImpl value, $Res Function(_$FilterCriterion_NameMatchesExactlyImpl) then) = __$$FilterCriterion_NameMatchesExactlyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$FilterCriterion_NameMatchesExactlyImplCopyWithImpl<$Res> extends _$FilterCriterionCopyWithImpl<$Res, _$FilterCriterion_NameMatchesExactlyImpl> implements _$$FilterCriterion_NameMatchesExactlyImplCopyWith<$Res> {
  __$$FilterCriterion_NameMatchesExactlyImplCopyWithImpl(_$FilterCriterion_NameMatchesExactlyImpl _value, $Res Function(_$FilterCriterion_NameMatchesExactlyImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$FilterCriterion_NameMatchesExactlyImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterCriterion_NameMatchesExactlyImpl implements FilterCriterion_NameMatchesExactly {
  const _$FilterCriterion_NameMatchesExactlyImpl(this.field0);

  @override
  final String field0;

  @override
  String toString() {
    return 'FilterCriterion.nameMatchesExactly(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FilterCriterion_NameMatchesExactlyImpl && (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCriterion_NameMatchesExactlyImplCopyWith<_$FilterCriterion_NameMatchesExactlyImpl> get copyWith => __$$FilterCriterion_NameMatchesExactlyImplCopyWithImpl<_$FilterCriterion_NameMatchesExactlyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) hasServiceUuid,
    required TResult Function(String field0) nameMatchesExactly,
    required TResult Function(String field0) nameContains,
    required TResult Function(int field0) manufacturerId,
    required TResult Function(int field0, Uint8List field1) manufacturerData,
  }) {
    return nameMatchesExactly(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? hasServiceUuid,
    TResult? Function(String field0)? nameMatchesExactly,
    TResult? Function(String field0)? nameContains,
    TResult? Function(int field0)? manufacturerId,
    TResult? Function(int field0, Uint8List field1)? manufacturerData,
  }) {
    return nameMatchesExactly?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? hasServiceUuid,
    TResult Function(String field0)? nameMatchesExactly,
    TResult Function(String field0)? nameContains,
    TResult Function(int field0)? manufacturerId,
    TResult Function(int field0, Uint8List field1)? manufacturerData,
    required TResult orElse(),
  }) {
    if (nameMatchesExactly != null) {
      return nameMatchesExactly(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriterion_HasServiceUuid value) hasServiceUuid,
    required TResult Function(FilterCriterion_NameMatchesExactly value) nameMatchesExactly,
    required TResult Function(FilterCriterion_NameContains value) nameContains,
    required TResult Function(FilterCriterion_ManufacturerId value) manufacturerId,
    required TResult Function(FilterCriterion_ManufacturerData value) manufacturerData,
  }) {
    return nameMatchesExactly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult? Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult? Function(FilterCriterion_NameContains value)? nameContains,
    TResult? Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult? Function(FilterCriterion_ManufacturerData value)? manufacturerData,
  }) {
    return nameMatchesExactly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult Function(FilterCriterion_NameContains value)? nameContains,
    TResult Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult Function(FilterCriterion_ManufacturerData value)? manufacturerData,
    required TResult orElse(),
  }) {
    if (nameMatchesExactly != null) {
      return nameMatchesExactly(this);
    }
    return orElse();
  }
}

abstract class FilterCriterion_NameMatchesExactly implements FilterCriterion {
  const factory FilterCriterion_NameMatchesExactly(final String field0) = _$FilterCriterion_NameMatchesExactlyImpl;

  @override
  String get field0;
  @JsonKey(ignore: true)
  _$$FilterCriterion_NameMatchesExactlyImplCopyWith<_$FilterCriterion_NameMatchesExactlyImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterCriterion_NameContainsImplCopyWith<$Res> {
  factory _$$FilterCriterion_NameContainsImplCopyWith(_$FilterCriterion_NameContainsImpl value, $Res Function(_$FilterCriterion_NameContainsImpl) then) = __$$FilterCriterion_NameContainsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$FilterCriterion_NameContainsImplCopyWithImpl<$Res> extends _$FilterCriterionCopyWithImpl<$Res, _$FilterCriterion_NameContainsImpl> implements _$$FilterCriterion_NameContainsImplCopyWith<$Res> {
  __$$FilterCriterion_NameContainsImplCopyWithImpl(_$FilterCriterion_NameContainsImpl _value, $Res Function(_$FilterCriterion_NameContainsImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$FilterCriterion_NameContainsImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterCriterion_NameContainsImpl implements FilterCriterion_NameContains {
  const _$FilterCriterion_NameContainsImpl(this.field0);

  @override
  final String field0;

  @override
  String toString() {
    return 'FilterCriterion.nameContains(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FilterCriterion_NameContainsImpl && (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCriterion_NameContainsImplCopyWith<_$FilterCriterion_NameContainsImpl> get copyWith => __$$FilterCriterion_NameContainsImplCopyWithImpl<_$FilterCriterion_NameContainsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) hasServiceUuid,
    required TResult Function(String field0) nameMatchesExactly,
    required TResult Function(String field0) nameContains,
    required TResult Function(int field0) manufacturerId,
    required TResult Function(int field0, Uint8List field1) manufacturerData,
  }) {
    return nameContains(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? hasServiceUuid,
    TResult? Function(String field0)? nameMatchesExactly,
    TResult? Function(String field0)? nameContains,
    TResult? Function(int field0)? manufacturerId,
    TResult? Function(int field0, Uint8List field1)? manufacturerData,
  }) {
    return nameContains?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? hasServiceUuid,
    TResult Function(String field0)? nameMatchesExactly,
    TResult Function(String field0)? nameContains,
    TResult Function(int field0)? manufacturerId,
    TResult Function(int field0, Uint8List field1)? manufacturerData,
    required TResult orElse(),
  }) {
    if (nameContains != null) {
      return nameContains(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriterion_HasServiceUuid value) hasServiceUuid,
    required TResult Function(FilterCriterion_NameMatchesExactly value) nameMatchesExactly,
    required TResult Function(FilterCriterion_NameContains value) nameContains,
    required TResult Function(FilterCriterion_ManufacturerId value) manufacturerId,
    required TResult Function(FilterCriterion_ManufacturerData value) manufacturerData,
  }) {
    return nameContains(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult? Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult? Function(FilterCriterion_NameContains value)? nameContains,
    TResult? Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult? Function(FilterCriterion_ManufacturerData value)? manufacturerData,
  }) {
    return nameContains?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult Function(FilterCriterion_NameContains value)? nameContains,
    TResult Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult Function(FilterCriterion_ManufacturerData value)? manufacturerData,
    required TResult orElse(),
  }) {
    if (nameContains != null) {
      return nameContains(this);
    }
    return orElse();
  }
}

abstract class FilterCriterion_NameContains implements FilterCriterion {
  const factory FilterCriterion_NameContains(final String field0) = _$FilterCriterion_NameContainsImpl;

  @override
  String get field0;
  @JsonKey(ignore: true)
  _$$FilterCriterion_NameContainsImplCopyWith<_$FilterCriterion_NameContainsImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterCriterion_ManufacturerIdImplCopyWith<$Res> {
  factory _$$FilterCriterion_ManufacturerIdImplCopyWith(_$FilterCriterion_ManufacturerIdImpl value, $Res Function(_$FilterCriterion_ManufacturerIdImpl) then) = __$$FilterCriterion_ManufacturerIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int field0});
}

/// @nodoc
class __$$FilterCriterion_ManufacturerIdImplCopyWithImpl<$Res> extends _$FilterCriterionCopyWithImpl<$Res, _$FilterCriterion_ManufacturerIdImpl> implements _$$FilterCriterion_ManufacturerIdImplCopyWith<$Res> {
  __$$FilterCriterion_ManufacturerIdImplCopyWithImpl(_$FilterCriterion_ManufacturerIdImpl _value, $Res Function(_$FilterCriterion_ManufacturerIdImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$FilterCriterion_ManufacturerIdImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterCriterion_ManufacturerIdImpl implements FilterCriterion_ManufacturerId {
  const _$FilterCriterion_ManufacturerIdImpl(this.field0);

  @override
  final int field0;

  @override
  String toString() {
    return 'FilterCriterion.manufacturerId(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FilterCriterion_ManufacturerIdImpl && (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCriterion_ManufacturerIdImplCopyWith<_$FilterCriterion_ManufacturerIdImpl> get copyWith => __$$FilterCriterion_ManufacturerIdImplCopyWithImpl<_$FilterCriterion_ManufacturerIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) hasServiceUuid,
    required TResult Function(String field0) nameMatchesExactly,
    required TResult Function(String field0) nameContains,
    required TResult Function(int field0) manufacturerId,
    required TResult Function(int field0, Uint8List field1) manufacturerData,
  }) {
    return manufacturerId(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? hasServiceUuid,
    TResult? Function(String field0)? nameMatchesExactly,
    TResult? Function(String field0)? nameContains,
    TResult? Function(int field0)? manufacturerId,
    TResult? Function(int field0, Uint8List field1)? manufacturerData,
  }) {
    return manufacturerId?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? hasServiceUuid,
    TResult Function(String field0)? nameMatchesExactly,
    TResult Function(String field0)? nameContains,
    TResult Function(int field0)? manufacturerId,
    TResult Function(int field0, Uint8List field1)? manufacturerData,
    required TResult orElse(),
  }) {
    if (manufacturerId != null) {
      return manufacturerId(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriterion_HasServiceUuid value) hasServiceUuid,
    required TResult Function(FilterCriterion_NameMatchesExactly value) nameMatchesExactly,
    required TResult Function(FilterCriterion_NameContains value) nameContains,
    required TResult Function(FilterCriterion_ManufacturerId value) manufacturerId,
    required TResult Function(FilterCriterion_ManufacturerData value) manufacturerData,
  }) {
    return manufacturerId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult? Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult? Function(FilterCriterion_NameContains value)? nameContains,
    TResult? Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult? Function(FilterCriterion_ManufacturerData value)? manufacturerData,
  }) {
    return manufacturerId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult Function(FilterCriterion_NameContains value)? nameContains,
    TResult Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult Function(FilterCriterion_ManufacturerData value)? manufacturerData,
    required TResult orElse(),
  }) {
    if (manufacturerId != null) {
      return manufacturerId(this);
    }
    return orElse();
  }
}

abstract class FilterCriterion_ManufacturerId implements FilterCriterion {
  const factory FilterCriterion_ManufacturerId(final int field0) = _$FilterCriterion_ManufacturerIdImpl;

  @override
  int get field0;
  @JsonKey(ignore: true)
  _$$FilterCriterion_ManufacturerIdImplCopyWith<_$FilterCriterion_ManufacturerIdImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterCriterion_ManufacturerDataImplCopyWith<$Res> {
  factory _$$FilterCriterion_ManufacturerDataImplCopyWith(_$FilterCriterion_ManufacturerDataImpl value, $Res Function(_$FilterCriterion_ManufacturerDataImpl) then) = __$$FilterCriterion_ManufacturerDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int field0, Uint8List field1});
}

/// @nodoc
class __$$FilterCriterion_ManufacturerDataImplCopyWithImpl<$Res> extends _$FilterCriterionCopyWithImpl<$Res, _$FilterCriterion_ManufacturerDataImpl> implements _$$FilterCriterion_ManufacturerDataImplCopyWith<$Res> {
  __$$FilterCriterion_ManufacturerDataImplCopyWithImpl(_$FilterCriterion_ManufacturerDataImpl _value, $Res Function(_$FilterCriterion_ManufacturerDataImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
    Object? field1 = null,
  }) {
    return _then(_$FilterCriterion_ManufacturerDataImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as int,
      null == field1
          ? _value.field1
          : field1 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$FilterCriterion_ManufacturerDataImpl implements FilterCriterion_ManufacturerData {
  const _$FilterCriterion_ManufacturerDataImpl(this.field0, this.field1);

  @override
  final int field0;
  @override
  final Uint8List field1;

  @override
  String toString() {
    return 'FilterCriterion.manufacturerData(field0: $field0, field1: $field1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FilterCriterion_ManufacturerDataImpl && (identical(other.field0, field0) || other.field0 == field0) && const DeepCollectionEquality().equals(other.field1, field1));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0, const DeepCollectionEquality().hash(field1));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCriterion_ManufacturerDataImplCopyWith<_$FilterCriterion_ManufacturerDataImpl> get copyWith => __$$FilterCriterion_ManufacturerDataImplCopyWithImpl<_$FilterCriterion_ManufacturerDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) hasServiceUuid,
    required TResult Function(String field0) nameMatchesExactly,
    required TResult Function(String field0) nameContains,
    required TResult Function(int field0) manufacturerId,
    required TResult Function(int field0, Uint8List field1) manufacturerData,
  }) {
    return manufacturerData(field0, field1);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? hasServiceUuid,
    TResult? Function(String field0)? nameMatchesExactly,
    TResult? Function(String field0)? nameContains,
    TResult? Function(int field0)? manufacturerId,
    TResult? Function(int field0, Uint8List field1)? manufacturerData,
  }) {
    return manufacturerData?.call(field0, field1);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? hasServiceUuid,
    TResult Function(String field0)? nameMatchesExactly,
    TResult Function(String field0)? nameContains,
    TResult Function(int field0)? manufacturerId,
    TResult Function(int field0, Uint8List field1)? manufacturerData,
    required TResult orElse(),
  }) {
    if (manufacturerData != null) {
      return manufacturerData(field0, field1);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterCriterion_HasServiceUuid value) hasServiceUuid,
    required TResult Function(FilterCriterion_NameMatchesExactly value) nameMatchesExactly,
    required TResult Function(FilterCriterion_NameContains value) nameContains,
    required TResult Function(FilterCriterion_ManufacturerId value) manufacturerId,
    required TResult Function(FilterCriterion_ManufacturerData value) manufacturerData,
  }) {
    return manufacturerData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult? Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult? Function(FilterCriterion_NameContains value)? nameContains,
    TResult? Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult? Function(FilterCriterion_ManufacturerData value)? manufacturerData,
  }) {
    return manufacturerData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterCriterion_HasServiceUuid value)? hasServiceUuid,
    TResult Function(FilterCriterion_NameMatchesExactly value)? nameMatchesExactly,
    TResult Function(FilterCriterion_NameContains value)? nameContains,
    TResult Function(FilterCriterion_ManufacturerId value)? manufacturerId,
    TResult Function(FilterCriterion_ManufacturerData value)? manufacturerData,
    required TResult orElse(),
  }) {
    if (manufacturerData != null) {
      return manufacturerData(this);
    }
    return orElse();
  }
}

abstract class FilterCriterion_ManufacturerData implements FilterCriterion {
  const factory FilterCriterion_ManufacturerData(final int field0, final Uint8List field1) = _$FilterCriterion_ManufacturerDataImpl;

  @override
  int get field0;
  Uint8List get field1;
  @JsonKey(ignore: true)
  _$$FilterCriterion_ManufacturerDataImplCopyWith<_$FilterCriterion_ManufacturerDataImpl> get copyWith => throw _privateConstructorUsedError;
}
