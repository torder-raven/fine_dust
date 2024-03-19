// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_fine_dust_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationFineDustEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFineDustEventCopyWith<$Res> {
  factory $LocationFineDustEventCopyWith(LocationFineDustEvent value,
          $Res Function(LocationFineDustEvent) then) =
      _$LocationFineDustEventCopyWithImpl<$Res, LocationFineDustEvent>;
}

/// @nodoc
class _$LocationFineDustEventCopyWithImpl<$Res,
        $Val extends LocationFineDustEvent>
    implements $LocationFineDustEventCopyWith<$Res> {
  _$LocationFineDustEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$LocationFineDustEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'LocationFineDustEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements LocationFineDustEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
mixin _$LocationFineDustState {
  LocationFineDustStatus get status => throw _privateConstructorUsedError;
  List<LocationFineDust>? get locationFineDustList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationFineDustStateCopyWith<LocationFineDustState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFineDustStateCopyWith<$Res> {
  factory $LocationFineDustStateCopyWith(LocationFineDustState value,
          $Res Function(LocationFineDustState) then) =
      _$LocationFineDustStateCopyWithImpl<$Res, LocationFineDustState>;
  @useResult
  $Res call(
      {LocationFineDustStatus status,
      List<LocationFineDust>? locationFineDustList});
}

/// @nodoc
class _$LocationFineDustStateCopyWithImpl<$Res,
        $Val extends LocationFineDustState>
    implements $LocationFineDustStateCopyWith<$Res> {
  _$LocationFineDustStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locationFineDustList = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationFineDustStatus,
      locationFineDustList: freezed == locationFineDustList
          ? _value.locationFineDustList
          : locationFineDustList // ignore: cast_nullable_to_non_nullable
              as List<LocationFineDust>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationFineDustStateImplCopyWith<$Res>
    implements $LocationFineDustStateCopyWith<$Res> {
  factory _$$LocationFineDustStateImplCopyWith(
          _$LocationFineDustStateImpl value,
          $Res Function(_$LocationFineDustStateImpl) then) =
      __$$LocationFineDustStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationFineDustStatus status,
      List<LocationFineDust>? locationFineDustList});
}

/// @nodoc
class __$$LocationFineDustStateImplCopyWithImpl<$Res>
    extends _$LocationFineDustStateCopyWithImpl<$Res,
        _$LocationFineDustStateImpl>
    implements _$$LocationFineDustStateImplCopyWith<$Res> {
  __$$LocationFineDustStateImplCopyWithImpl(_$LocationFineDustStateImpl _value,
      $Res Function(_$LocationFineDustStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locationFineDustList = freezed,
  }) {
    return _then(_$LocationFineDustStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationFineDustStatus,
      locationFineDustList: freezed == locationFineDustList
          ? _value._locationFineDustList
          : locationFineDustList // ignore: cast_nullable_to_non_nullable
              as List<LocationFineDust>?,
    ));
  }
}

/// @nodoc

class _$LocationFineDustStateImpl implements _LocationFineDustState {
  _$LocationFineDustStateImpl(
      {required this.status,
      final List<LocationFineDust>? locationFineDustList})
      : _locationFineDustList = locationFineDustList;

  @override
  final LocationFineDustStatus status;
  final List<LocationFineDust>? _locationFineDustList;
  @override
  List<LocationFineDust>? get locationFineDustList {
    final value = _locationFineDustList;
    if (value == null) return null;
    if (_locationFineDustList is EqualUnmodifiableListView)
      return _locationFineDustList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationFineDustState(status: $status, locationFineDustList: $locationFineDustList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFineDustStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._locationFineDustList, _locationFineDustList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_locationFineDustList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFineDustStateImplCopyWith<_$LocationFineDustStateImpl>
      get copyWith => __$$LocationFineDustStateImplCopyWithImpl<
          _$LocationFineDustStateImpl>(this, _$identity);
}

abstract class _LocationFineDustState implements LocationFineDustState {
  factory _LocationFineDustState(
          {required final LocationFineDustStatus status,
          final List<LocationFineDust>? locationFineDustList}) =
      _$LocationFineDustStateImpl;

  @override
  LocationFineDustStatus get status;
  @override
  List<LocationFineDust>? get locationFineDustList;
  @override
  @JsonKey(ignore: true)
  _$$LocationFineDustStateImplCopyWith<_$LocationFineDustStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
