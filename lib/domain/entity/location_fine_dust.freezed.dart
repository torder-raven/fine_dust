// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_fine_dust.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationFineDust {
  LocationCode get locationCode => throw _privateConstructorUsedError;
  DustInfo get fineDust => throw _privateConstructorUsedError;
  DustInfo get ultraFineDust => throw _privateConstructorUsedError;
  DustInfo get ozone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationFineDustCopyWith<LocationFineDust> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFineDustCopyWith<$Res> {
  factory $LocationFineDustCopyWith(
          LocationFineDust value, $Res Function(LocationFineDust) then) =
      _$LocationFineDustCopyWithImpl<$Res, LocationFineDust>;
  @useResult
  $Res call(
      {LocationCode locationCode,
      DustInfo fineDust,
      DustInfo ultraFineDust,
      DustInfo ozone});
}

/// @nodoc
class _$LocationFineDustCopyWithImpl<$Res, $Val extends LocationFineDust>
    implements $LocationFineDustCopyWith<$Res> {
  _$LocationFineDustCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
    Object? fineDust = null,
    Object? ultraFineDust = null,
    Object? ozone = null,
  }) {
    return _then(_value.copyWith(
      locationCode: null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as LocationCode,
      fineDust: null == fineDust
          ? _value.fineDust
          : fineDust // ignore: cast_nullable_to_non_nullable
              as DustInfo,
      ultraFineDust: null == ultraFineDust
          ? _value.ultraFineDust
          : ultraFineDust // ignore: cast_nullable_to_non_nullable
              as DustInfo,
      ozone: null == ozone
          ? _value.ozone
          : ozone // ignore: cast_nullable_to_non_nullable
              as DustInfo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationFineDustImplCopyWith<$Res>
    implements $LocationFineDustCopyWith<$Res> {
  factory _$$LocationFineDustImplCopyWith(_$LocationFineDustImpl value,
          $Res Function(_$LocationFineDustImpl) then) =
      __$$LocationFineDustImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationCode locationCode,
      DustInfo fineDust,
      DustInfo ultraFineDust,
      DustInfo ozone});
}

/// @nodoc
class __$$LocationFineDustImplCopyWithImpl<$Res>
    extends _$LocationFineDustCopyWithImpl<$Res, _$LocationFineDustImpl>
    implements _$$LocationFineDustImplCopyWith<$Res> {
  __$$LocationFineDustImplCopyWithImpl(_$LocationFineDustImpl _value,
      $Res Function(_$LocationFineDustImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
    Object? fineDust = null,
    Object? ultraFineDust = null,
    Object? ozone = null,
  }) {
    return _then(_$LocationFineDustImpl(
      locationCode: null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as LocationCode,
      fineDust: null == fineDust
          ? _value.fineDust
          : fineDust // ignore: cast_nullable_to_non_nullable
              as DustInfo,
      ultraFineDust: null == ultraFineDust
          ? _value.ultraFineDust
          : ultraFineDust // ignore: cast_nullable_to_non_nullable
              as DustInfo,
      ozone: null == ozone
          ? _value.ozone
          : ozone // ignore: cast_nullable_to_non_nullable
              as DustInfo,
    ));
  }
}

/// @nodoc

class _$LocationFineDustImpl implements _LocationFineDust {
  _$LocationFineDustImpl(
      {required this.locationCode,
      required this.fineDust,
      required this.ultraFineDust,
      required this.ozone});

  @override
  final LocationCode locationCode;
  @override
  final DustInfo fineDust;
  @override
  final DustInfo ultraFineDust;
  @override
  final DustInfo ozone;

  @override
  String toString() {
    return 'LocationFineDust(locationCode: $locationCode, fineDust: $fineDust, ultraFineDust: $ultraFineDust, ozone: $ozone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFineDustImpl &&
            (identical(other.locationCode, locationCode) ||
                other.locationCode == locationCode) &&
            (identical(other.fineDust, fineDust) ||
                other.fineDust == fineDust) &&
            (identical(other.ultraFineDust, ultraFineDust) ||
                other.ultraFineDust == ultraFineDust) &&
            (identical(other.ozone, ozone) || other.ozone == ozone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, locationCode, fineDust, ultraFineDust, ozone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFineDustImplCopyWith<_$LocationFineDustImpl> get copyWith =>
      __$$LocationFineDustImplCopyWithImpl<_$LocationFineDustImpl>(
          this, _$identity);
}

abstract class _LocationFineDust implements LocationFineDust {
  factory _LocationFineDust(
      {required final LocationCode locationCode,
      required final DustInfo fineDust,
      required final DustInfo ultraFineDust,
      required final DustInfo ozone}) = _$LocationFineDustImpl;

  @override
  LocationCode get locationCode;
  @override
  DustInfo get fineDust;
  @override
  DustInfo get ultraFineDust;
  @override
  DustInfo get ozone;
  @override
  @JsonKey(ignore: true)
  _$$LocationFineDustImplCopyWith<_$LocationFineDustImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
