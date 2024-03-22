// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailEvent {
  LocationCode get locationCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationCode locationCode) started,
    required TResult Function(LocationCode locationCode) onPressBookmarked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationCode locationCode)? started,
    TResult? Function(LocationCode locationCode)? onPressBookmarked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationCode locationCode)? started,
    TResult Function(LocationCode locationCode)? onPressBookmarked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnPressBookmarked value) onPressBookmarked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnPressBookmarked value)? onPressBookmarked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnPressBookmarked value)? onPressBookmarked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailEventCopyWith<DetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
  @useResult
  $Res call({LocationCode locationCode});
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
  }) {
    return _then(_value.copyWith(
      locationCode: null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as LocationCode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $DetailEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationCode locationCode});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
  }) {
    return _then(_$StartedImpl(
      null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as LocationCode,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.locationCode);

  @override
  final LocationCode locationCode;

  @override
  String toString() {
    return 'DetailEvent.started(locationCode: $locationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.locationCode, locationCode) ||
                other.locationCode == locationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationCode locationCode) started,
    required TResult Function(LocationCode locationCode) onPressBookmarked,
  }) {
    return started(locationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationCode locationCode)? started,
    TResult? Function(LocationCode locationCode)? onPressBookmarked,
  }) {
    return started?.call(locationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationCode locationCode)? started,
    TResult Function(LocationCode locationCode)? onPressBookmarked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(locationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnPressBookmarked value) onPressBookmarked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnPressBookmarked value)? onPressBookmarked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnPressBookmarked value)? onPressBookmarked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailEvent {
  const factory _Started(final LocationCode locationCode) = _$StartedImpl;

  @override
  LocationCode get locationCode;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPressBookmarkedImplCopyWith<$Res>
    implements $DetailEventCopyWith<$Res> {
  factory _$$OnPressBookmarkedImplCopyWith(_$OnPressBookmarkedImpl value,
          $Res Function(_$OnPressBookmarkedImpl) then) =
      __$$OnPressBookmarkedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationCode locationCode});
}

/// @nodoc
class __$$OnPressBookmarkedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$OnPressBookmarkedImpl>
    implements _$$OnPressBookmarkedImplCopyWith<$Res> {
  __$$OnPressBookmarkedImplCopyWithImpl(_$OnPressBookmarkedImpl _value,
      $Res Function(_$OnPressBookmarkedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
  }) {
    return _then(_$OnPressBookmarkedImpl(
      null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as LocationCode,
    ));
  }
}

/// @nodoc

class _$OnPressBookmarkedImpl implements _OnPressBookmarked {
  const _$OnPressBookmarkedImpl(this.locationCode);

  @override
  final LocationCode locationCode;

  @override
  String toString() {
    return 'DetailEvent.onPressBookmarked(locationCode: $locationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPressBookmarkedImpl &&
            (identical(other.locationCode, locationCode) ||
                other.locationCode == locationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPressBookmarkedImplCopyWith<_$OnPressBookmarkedImpl> get copyWith =>
      __$$OnPressBookmarkedImplCopyWithImpl<_$OnPressBookmarkedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationCode locationCode) started,
    required TResult Function(LocationCode locationCode) onPressBookmarked,
  }) {
    return onPressBookmarked(locationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationCode locationCode)? started,
    TResult? Function(LocationCode locationCode)? onPressBookmarked,
  }) {
    return onPressBookmarked?.call(locationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationCode locationCode)? started,
    TResult Function(LocationCode locationCode)? onPressBookmarked,
    required TResult orElse(),
  }) {
    if (onPressBookmarked != null) {
      return onPressBookmarked(locationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnPressBookmarked value) onPressBookmarked,
  }) {
    return onPressBookmarked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnPressBookmarked value)? onPressBookmarked,
  }) {
    return onPressBookmarked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnPressBookmarked value)? onPressBookmarked,
    required TResult orElse(),
  }) {
    if (onPressBookmarked != null) {
      return onPressBookmarked(this);
    }
    return orElse();
  }
}

abstract class _OnPressBookmarked implements DetailEvent {
  const factory _OnPressBookmarked(final LocationCode locationCode) =
      _$OnPressBookmarkedImpl;

  @override
  LocationCode get locationCode;
  @override
  @JsonKey(ignore: true)
  _$$OnPressBookmarkedImplCopyWith<_$OnPressBookmarkedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  DetailStatus get status => throw _privateConstructorUsedError;
  LocationTotalInfo? get locationTotalInfo =>
      throw _privateConstructorUsedError;
  bool? get isBookmarkedLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {DetailStatus status,
      LocationTotalInfo? locationTotalInfo,
      bool? isBookmarkedLocation});
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locationTotalInfo = freezed,
    Object? isBookmarkedLocation = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      locationTotalInfo: freezed == locationTotalInfo
          ? _value.locationTotalInfo
          : locationTotalInfo // ignore: cast_nullable_to_non_nullable
              as LocationTotalInfo?,
      isBookmarkedLocation: freezed == isBookmarkedLocation
          ? _value.isBookmarkedLocation
          : isBookmarkedLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailStatus status,
      LocationTotalInfo? locationTotalInfo,
      bool? isBookmarkedLocation});
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locationTotalInfo = freezed,
    Object? isBookmarkedLocation = freezed,
  }) {
    return _then(_$DetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      locationTotalInfo: freezed == locationTotalInfo
          ? _value.locationTotalInfo
          : locationTotalInfo // ignore: cast_nullable_to_non_nullable
              as LocationTotalInfo?,
      isBookmarkedLocation: freezed == isBookmarkedLocation
          ? _value.isBookmarkedLocation
          : isBookmarkedLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl(
      {required this.status,
      this.locationTotalInfo,
      this.isBookmarkedLocation});

  @override
  final DetailStatus status;
  @override
  final LocationTotalInfo? locationTotalInfo;
  @override
  final bool? isBookmarkedLocation;

  @override
  String toString() {
    return 'DetailState(status: $status, locationTotalInfo: $locationTotalInfo, isBookmarkedLocation: $isBookmarkedLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.locationTotalInfo, locationTotalInfo) ||
                other.locationTotalInfo == locationTotalInfo) &&
            (identical(other.isBookmarkedLocation, isBookmarkedLocation) ||
                other.isBookmarkedLocation == isBookmarkedLocation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, locationTotalInfo, isBookmarkedLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {required final DetailStatus status,
      final LocationTotalInfo? locationTotalInfo,
      final bool? isBookmarkedLocation}) = _$DetailStateImpl;

  @override
  DetailStatus get status;
  @override
  LocationTotalInfo? get locationTotalInfo;
  @override
  bool? get isBookmarkedLocation;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
