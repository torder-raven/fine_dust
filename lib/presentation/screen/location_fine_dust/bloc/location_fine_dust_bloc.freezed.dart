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
    required TResult Function(List<int> bookmarkList) refreshBookmarkList,
    required TResult Function(LocationCode locationCode) bookmark,
    required TResult Function(LocationCode locationCode) deleteBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult? Function(LocationCode locationCode)? bookmark,
    TResult? Function(LocationCode locationCode)? deleteBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult Function(LocationCode locationCode)? bookmark,
    TResult Function(LocationCode locationCode)? deleteBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RefreshBookmarkList value) refreshBookmarkList,
    required TResult Function(_Bookmark value) bookmark,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult? Function(_Bookmark value)? bookmark,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult Function(_Bookmark value)? bookmark,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
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
    required TResult Function(List<int> bookmarkList) refreshBookmarkList,
    required TResult Function(LocationCode locationCode) bookmark,
    required TResult Function(LocationCode locationCode) deleteBookmark,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult? Function(LocationCode locationCode)? bookmark,
    TResult? Function(LocationCode locationCode)? deleteBookmark,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult Function(LocationCode locationCode)? bookmark,
    TResult Function(LocationCode locationCode)? deleteBookmark,
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
    required TResult Function(_RefreshBookmarkList value) refreshBookmarkList,
    required TResult Function(_Bookmark value) bookmark,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult? Function(_Bookmark value)? bookmark,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult Function(_Bookmark value)? bookmark,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
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
abstract class _$$RefreshBookmarkListImplCopyWith<$Res> {
  factory _$$RefreshBookmarkListImplCopyWith(_$RefreshBookmarkListImpl value,
          $Res Function(_$RefreshBookmarkListImpl) then) =
      __$$RefreshBookmarkListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> bookmarkList});
}

/// @nodoc
class __$$RefreshBookmarkListImplCopyWithImpl<$Res>
    extends _$LocationFineDustEventCopyWithImpl<$Res, _$RefreshBookmarkListImpl>
    implements _$$RefreshBookmarkListImplCopyWith<$Res> {
  __$$RefreshBookmarkListImplCopyWithImpl(_$RefreshBookmarkListImpl _value,
      $Res Function(_$RefreshBookmarkListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkList = null,
  }) {
    return _then(_$RefreshBookmarkListImpl(
      null == bookmarkList
          ? _value._bookmarkList
          : bookmarkList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$RefreshBookmarkListImpl implements _RefreshBookmarkList {
  const _$RefreshBookmarkListImpl(final List<int> bookmarkList)
      : _bookmarkList = bookmarkList;

  final List<int> _bookmarkList;
  @override
  List<int> get bookmarkList {
    if (_bookmarkList is EqualUnmodifiableListView) return _bookmarkList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarkList);
  }

  @override
  String toString() {
    return 'LocationFineDustEvent.refreshBookmarkList(bookmarkList: $bookmarkList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshBookmarkListImpl &&
            const DeepCollectionEquality()
                .equals(other._bookmarkList, _bookmarkList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bookmarkList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshBookmarkListImplCopyWith<_$RefreshBookmarkListImpl> get copyWith =>
      __$$RefreshBookmarkListImplCopyWithImpl<_$RefreshBookmarkListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<int> bookmarkList) refreshBookmarkList,
    required TResult Function(LocationCode locationCode) bookmark,
    required TResult Function(LocationCode locationCode) deleteBookmark,
  }) {
    return refreshBookmarkList(bookmarkList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult? Function(LocationCode locationCode)? bookmark,
    TResult? Function(LocationCode locationCode)? deleteBookmark,
  }) {
    return refreshBookmarkList?.call(bookmarkList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult Function(LocationCode locationCode)? bookmark,
    TResult Function(LocationCode locationCode)? deleteBookmark,
    required TResult orElse(),
  }) {
    if (refreshBookmarkList != null) {
      return refreshBookmarkList(bookmarkList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RefreshBookmarkList value) refreshBookmarkList,
    required TResult Function(_Bookmark value) bookmark,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
  }) {
    return refreshBookmarkList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult? Function(_Bookmark value)? bookmark,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
  }) {
    return refreshBookmarkList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult Function(_Bookmark value)? bookmark,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
    required TResult orElse(),
  }) {
    if (refreshBookmarkList != null) {
      return refreshBookmarkList(this);
    }
    return orElse();
  }
}

abstract class _RefreshBookmarkList implements LocationFineDustEvent {
  const factory _RefreshBookmarkList(final List<int> bookmarkList) =
      _$RefreshBookmarkListImpl;

  List<int> get bookmarkList;
  @JsonKey(ignore: true)
  _$$RefreshBookmarkListImplCopyWith<_$RefreshBookmarkListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkImplCopyWith<$Res> {
  factory _$$BookmarkImplCopyWith(
          _$BookmarkImpl value, $Res Function(_$BookmarkImpl) then) =
      __$$BookmarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationCode locationCode});
}

/// @nodoc
class __$$BookmarkImplCopyWithImpl<$Res>
    extends _$LocationFineDustEventCopyWithImpl<$Res, _$BookmarkImpl>
    implements _$$BookmarkImplCopyWith<$Res> {
  __$$BookmarkImplCopyWithImpl(
      _$BookmarkImpl _value, $Res Function(_$BookmarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
  }) {
    return _then(_$BookmarkImpl(
      null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as LocationCode,
    ));
  }
}

/// @nodoc

class _$BookmarkImpl implements _Bookmark {
  const _$BookmarkImpl(this.locationCode);

  @override
  final LocationCode locationCode;

  @override
  String toString() {
    return 'LocationFineDustEvent.bookmark(locationCode: $locationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkImpl &&
            (identical(other.locationCode, locationCode) ||
                other.locationCode == locationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      __$$BookmarkImplCopyWithImpl<_$BookmarkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<int> bookmarkList) refreshBookmarkList,
    required TResult Function(LocationCode locationCode) bookmark,
    required TResult Function(LocationCode locationCode) deleteBookmark,
  }) {
    return bookmark(locationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult? Function(LocationCode locationCode)? bookmark,
    TResult? Function(LocationCode locationCode)? deleteBookmark,
  }) {
    return bookmark?.call(locationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult Function(LocationCode locationCode)? bookmark,
    TResult Function(LocationCode locationCode)? deleteBookmark,
    required TResult orElse(),
  }) {
    if (bookmark != null) {
      return bookmark(locationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RefreshBookmarkList value) refreshBookmarkList,
    required TResult Function(_Bookmark value) bookmark,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
  }) {
    return bookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult? Function(_Bookmark value)? bookmark,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
  }) {
    return bookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult Function(_Bookmark value)? bookmark,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
    required TResult orElse(),
  }) {
    if (bookmark != null) {
      return bookmark(this);
    }
    return orElse();
  }
}

abstract class _Bookmark implements LocationFineDustEvent {
  const factory _Bookmark(final LocationCode locationCode) = _$BookmarkImpl;

  LocationCode get locationCode;
  @JsonKey(ignore: true)
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBookmarkImplCopyWith<$Res> {
  factory _$$DeleteBookmarkImplCopyWith(_$DeleteBookmarkImpl value,
          $Res Function(_$DeleteBookmarkImpl) then) =
      __$$DeleteBookmarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationCode locationCode});
}

/// @nodoc
class __$$DeleteBookmarkImplCopyWithImpl<$Res>
    extends _$LocationFineDustEventCopyWithImpl<$Res, _$DeleteBookmarkImpl>
    implements _$$DeleteBookmarkImplCopyWith<$Res> {
  __$$DeleteBookmarkImplCopyWithImpl(
      _$DeleteBookmarkImpl _value, $Res Function(_$DeleteBookmarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCode = null,
  }) {
    return _then(_$DeleteBookmarkImpl(
      null == locationCode
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as LocationCode,
    ));
  }
}

/// @nodoc

class _$DeleteBookmarkImpl implements _DeleteBookmark {
  const _$DeleteBookmarkImpl(this.locationCode);

  @override
  final LocationCode locationCode;

  @override
  String toString() {
    return 'LocationFineDustEvent.deleteBookmark(locationCode: $locationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBookmarkImpl &&
            (identical(other.locationCode, locationCode) ||
                other.locationCode == locationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBookmarkImplCopyWith<_$DeleteBookmarkImpl> get copyWith =>
      __$$DeleteBookmarkImplCopyWithImpl<_$DeleteBookmarkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<int> bookmarkList) refreshBookmarkList,
    required TResult Function(LocationCode locationCode) bookmark,
    required TResult Function(LocationCode locationCode) deleteBookmark,
  }) {
    return deleteBookmark(locationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult? Function(LocationCode locationCode)? bookmark,
    TResult? Function(LocationCode locationCode)? deleteBookmark,
  }) {
    return deleteBookmark?.call(locationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<int> bookmarkList)? refreshBookmarkList,
    TResult Function(LocationCode locationCode)? bookmark,
    TResult Function(LocationCode locationCode)? deleteBookmark,
    required TResult orElse(),
  }) {
    if (deleteBookmark != null) {
      return deleteBookmark(locationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RefreshBookmarkList value) refreshBookmarkList,
    required TResult Function(_Bookmark value) bookmark,
    required TResult Function(_DeleteBookmark value) deleteBookmark,
  }) {
    return deleteBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult? Function(_Bookmark value)? bookmark,
    TResult? Function(_DeleteBookmark value)? deleteBookmark,
  }) {
    return deleteBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RefreshBookmarkList value)? refreshBookmarkList,
    TResult Function(_Bookmark value)? bookmark,
    TResult Function(_DeleteBookmark value)? deleteBookmark,
    required TResult orElse(),
  }) {
    if (deleteBookmark != null) {
      return deleteBookmark(this);
    }
    return orElse();
  }
}

abstract class _DeleteBookmark implements LocationFineDustEvent {
  const factory _DeleteBookmark(final LocationCode locationCode) =
      _$DeleteBookmarkImpl;

  LocationCode get locationCode;
  @JsonKey(ignore: true)
  _$$DeleteBookmarkImplCopyWith<_$DeleteBookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationFineDustState {
  LocationFineDustStatus get status => throw _privateConstructorUsedError;
  List<LocationFineDust>? get locationFineDustList =>
      throw _privateConstructorUsedError;
  List<LocationFineDust>? get bookmarkList =>
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
      List<LocationFineDust>? locationFineDustList,
      List<LocationFineDust>? bookmarkList});
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
    Object? bookmarkList = freezed,
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
      bookmarkList: freezed == bookmarkList
          ? _value.bookmarkList
          : bookmarkList // ignore: cast_nullable_to_non_nullable
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
      List<LocationFineDust>? locationFineDustList,
      List<LocationFineDust>? bookmarkList});
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
    Object? bookmarkList = freezed,
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
      bookmarkList: freezed == bookmarkList
          ? _value._bookmarkList
          : bookmarkList // ignore: cast_nullable_to_non_nullable
              as List<LocationFineDust>?,
    ));
  }
}

/// @nodoc

class _$LocationFineDustStateImpl implements _LocationFineDustState {
  _$LocationFineDustStateImpl(
      {required this.status,
      final List<LocationFineDust>? locationFineDustList,
      final List<LocationFineDust>? bookmarkList})
      : _locationFineDustList = locationFineDustList,
        _bookmarkList = bookmarkList;

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

  final List<LocationFineDust>? _bookmarkList;
  @override
  List<LocationFineDust>? get bookmarkList {
    final value = _bookmarkList;
    if (value == null) return null;
    if (_bookmarkList is EqualUnmodifiableListView) return _bookmarkList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationFineDustState(status: $status, locationFineDustList: $locationFineDustList, bookmarkList: $bookmarkList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFineDustStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._locationFineDustList, _locationFineDustList) &&
            const DeepCollectionEquality()
                .equals(other._bookmarkList, _bookmarkList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_locationFineDustList),
      const DeepCollectionEquality().hash(_bookmarkList));

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
          final List<LocationFineDust>? locationFineDustList,
          final List<LocationFineDust>? bookmarkList}) =
      _$LocationFineDustStateImpl;

  @override
  LocationFineDustStatus get status;
  @override
  List<LocationFineDust>? get locationFineDustList;
  @override
  List<LocationFineDust>? get bookmarkList;
  @override
  @JsonKey(ignore: true)
  _$$LocationFineDustStateImplCopyWith<_$LocationFineDustStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
