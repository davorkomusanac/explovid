// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'actor_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ActorSearchEventTearOff {
  const _$ActorSearchEventTearOff();

// ignore: unused_element
  _SearchNameChanged searchNameChanged(String name) {
    return _SearchNameChanged(
      name,
    );
  }

// ignore: unused_element
  _DeleteSearchPressed deleteSearchPressed() {
    return const _DeleteSearchPressed();
  }

// ignore: unused_element
  _NextResultPageCalled nextResultPageCalled() {
    return const _NextResultPageCalled();
  }

// ignore: unused_element
  _GetPopularActorsCalled getPopularActorsCalled() {
    return const _GetPopularActorsCalled();
  }

// ignore: unused_element
  _NextPopularActorsPageCalled nextPopularActorsPageCalled() {
    return const _NextPopularActorsPageCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $ActorSearchEvent = _$ActorSearchEventTearOff();

/// @nodoc
mixin _$ActorSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularActorsCalled(),
    @required TResult nextPopularActorsPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularActorsCalled(),
    TResult nextPopularActorsPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    @required
        TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ActorSearchEventCopyWith<$Res> {
  factory $ActorSearchEventCopyWith(
          ActorSearchEvent value, $Res Function(ActorSearchEvent) then) =
      _$ActorSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActorSearchEventCopyWithImpl<$Res>
    implements $ActorSearchEventCopyWith<$Res> {
  _$ActorSearchEventCopyWithImpl(this._value, this._then);

  final ActorSearchEvent _value;
  // ignore: unused_field
  final $Res Function(ActorSearchEvent) _then;
}

/// @nodoc
abstract class _$SearchNameChangedCopyWith<$Res> {
  factory _$SearchNameChangedCopyWith(
          _SearchNameChanged value, $Res Function(_SearchNameChanged) then) =
      __$SearchNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$SearchNameChangedCopyWithImpl<$Res>
    extends _$ActorSearchEventCopyWithImpl<$Res>
    implements _$SearchNameChangedCopyWith<$Res> {
  __$SearchNameChangedCopyWithImpl(
      _SearchNameChanged _value, $Res Function(_SearchNameChanged) _then)
      : super(_value, (v) => _then(v as _SearchNameChanged));

  @override
  _SearchNameChanged get _value => super._value as _SearchNameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_SearchNameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_SearchNameChanged implements _SearchNameChanged {
  const _$_SearchNameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'ActorSearchEvent.searchNameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$SearchNameChangedCopyWith<_SearchNameChanged> get copyWith =>
      __$SearchNameChangedCopyWithImpl<_SearchNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularActorsCalled(),
    @required TResult nextPopularActorsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return searchNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularActorsCalled(),
    TResult nextPopularActorsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchNameChanged != null) {
      return searchNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    @required
        TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return searchNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchNameChanged != null) {
      return searchNameChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchNameChanged implements ActorSearchEvent {
  const factory _SearchNameChanged(String name) = _$_SearchNameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$SearchNameChangedCopyWith<_SearchNameChanged> get copyWith;
}

/// @nodoc
abstract class _$DeleteSearchPressedCopyWith<$Res> {
  factory _$DeleteSearchPressedCopyWith(_DeleteSearchPressed value,
          $Res Function(_DeleteSearchPressed) then) =
      __$DeleteSearchPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSearchPressedCopyWithImpl<$Res>
    extends _$ActorSearchEventCopyWithImpl<$Res>
    implements _$DeleteSearchPressedCopyWith<$Res> {
  __$DeleteSearchPressedCopyWithImpl(
      _DeleteSearchPressed _value, $Res Function(_DeleteSearchPressed) _then)
      : super(_value, (v) => _then(v as _DeleteSearchPressed));

  @override
  _DeleteSearchPressed get _value => super._value as _DeleteSearchPressed;
}

/// @nodoc
class _$_DeleteSearchPressed implements _DeleteSearchPressed {
  const _$_DeleteSearchPressed();

  @override
  String toString() {
    return 'ActorSearchEvent.deleteSearchPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSearchPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularActorsCalled(),
    @required TResult nextPopularActorsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return deleteSearchPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularActorsCalled(),
    TResult nextPopularActorsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSearchPressed != null) {
      return deleteSearchPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    @required
        TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return deleteSearchPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSearchPressed != null) {
      return deleteSearchPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteSearchPressed implements ActorSearchEvent {
  const factory _DeleteSearchPressed() = _$_DeleteSearchPressed;
}

/// @nodoc
abstract class _$NextResultPageCalledCopyWith<$Res> {
  factory _$NextResultPageCalledCopyWith(_NextResultPageCalled value,
          $Res Function(_NextResultPageCalled) then) =
      __$NextResultPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextResultPageCalledCopyWithImpl<$Res>
    extends _$ActorSearchEventCopyWithImpl<$Res>
    implements _$NextResultPageCalledCopyWith<$Res> {
  __$NextResultPageCalledCopyWithImpl(
      _NextResultPageCalled _value, $Res Function(_NextResultPageCalled) _then)
      : super(_value, (v) => _then(v as _NextResultPageCalled));

  @override
  _NextResultPageCalled get _value => super._value as _NextResultPageCalled;
}

/// @nodoc
class _$_NextResultPageCalled implements _NextResultPageCalled {
  const _$_NextResultPageCalled();

  @override
  String toString() {
    return 'ActorSearchEvent.nextResultPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextResultPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularActorsCalled(),
    @required TResult nextPopularActorsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return nextResultPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularActorsCalled(),
    TResult nextPopularActorsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextResultPageCalled != null) {
      return nextResultPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    @required
        TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return nextResultPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextResultPageCalled != null) {
      return nextResultPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextResultPageCalled implements ActorSearchEvent {
  const factory _NextResultPageCalled() = _$_NextResultPageCalled;
}

/// @nodoc
abstract class _$GetPopularActorsCalledCopyWith<$Res> {
  factory _$GetPopularActorsCalledCopyWith(_GetPopularActorsCalled value,
          $Res Function(_GetPopularActorsCalled) then) =
      __$GetPopularActorsCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPopularActorsCalledCopyWithImpl<$Res>
    extends _$ActorSearchEventCopyWithImpl<$Res>
    implements _$GetPopularActorsCalledCopyWith<$Res> {
  __$GetPopularActorsCalledCopyWithImpl(_GetPopularActorsCalled _value,
      $Res Function(_GetPopularActorsCalled) _then)
      : super(_value, (v) => _then(v as _GetPopularActorsCalled));

  @override
  _GetPopularActorsCalled get _value => super._value as _GetPopularActorsCalled;
}

/// @nodoc
class _$_GetPopularActorsCalled implements _GetPopularActorsCalled {
  const _$_GetPopularActorsCalled();

  @override
  String toString() {
    return 'ActorSearchEvent.getPopularActorsCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetPopularActorsCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularActorsCalled(),
    @required TResult nextPopularActorsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return getPopularActorsCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularActorsCalled(),
    TResult nextPopularActorsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPopularActorsCalled != null) {
      return getPopularActorsCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    @required
        TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return getPopularActorsCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPopularActorsCalled != null) {
      return getPopularActorsCalled(this);
    }
    return orElse();
  }
}

abstract class _GetPopularActorsCalled implements ActorSearchEvent {
  const factory _GetPopularActorsCalled() = _$_GetPopularActorsCalled;
}

/// @nodoc
abstract class _$NextPopularActorsPageCalledCopyWith<$Res> {
  factory _$NextPopularActorsPageCalledCopyWith(
          _NextPopularActorsPageCalled value,
          $Res Function(_NextPopularActorsPageCalled) then) =
      __$NextPopularActorsPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextPopularActorsPageCalledCopyWithImpl<$Res>
    extends _$ActorSearchEventCopyWithImpl<$Res>
    implements _$NextPopularActorsPageCalledCopyWith<$Res> {
  __$NextPopularActorsPageCalledCopyWithImpl(
      _NextPopularActorsPageCalled _value,
      $Res Function(_NextPopularActorsPageCalled) _then)
      : super(_value, (v) => _then(v as _NextPopularActorsPageCalled));

  @override
  _NextPopularActorsPageCalled get _value =>
      super._value as _NextPopularActorsPageCalled;
}

/// @nodoc
class _$_NextPopularActorsPageCalled implements _NextPopularActorsPageCalled {
  const _$_NextPopularActorsPageCalled();

  @override
  String toString() {
    return 'ActorSearchEvent.nextPopularActorsPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextPopularActorsPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchNameChanged(String name),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularActorsCalled(),
    @required TResult nextPopularActorsPageCalled(),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return nextPopularActorsPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularActorsCalled(),
    TResult nextPopularActorsPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPopularActorsPageCalled != null) {
      return nextPopularActorsPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    @required
        TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularActorsCalled != null);
    assert(nextPopularActorsPageCalled != null);
    return nextPopularActorsPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularActorsCalled(_GetPopularActorsCalled value),
    TResult nextPopularActorsPageCalled(_NextPopularActorsPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPopularActorsPageCalled != null) {
      return nextPopularActorsPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextPopularActorsPageCalled implements ActorSearchEvent {
  const factory _NextPopularActorsPageCalled() = _$_NextPopularActorsPageCalled;
}

/// @nodoc
class _$ActorSearchStateTearOff {
  const _$ActorSearchStateTearOff();

// ignore: unused_element
  _ActorSearchState call(
      {@required String name,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required ActorSearchResults actorSearchResults,
      @required int searchPageNum,
      @required ActorSearchResults popularActors,
      @required int popularPageNum}) {
    return _ActorSearchState(
      name: name,
      errorMessage: errorMessage,
      isSearching: isSearching,
      isSearchCompleted: isSearchCompleted,
      actorSearchResults: actorSearchResults,
      searchPageNum: searchPageNum,
      popularActors: popularActors,
      popularPageNum: popularPageNum,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ActorSearchState = _$ActorSearchStateTearOff();

/// @nodoc
mixin _$ActorSearchState {
  String get name;
  String get errorMessage;
  bool get isSearching;
  bool get isSearchCompleted;
  ActorSearchResults get actorSearchResults;
  int get searchPageNum;
  ActorSearchResults get popularActors;
  int get popularPageNum;

  @JsonKey(ignore: true)
  $ActorSearchStateCopyWith<ActorSearchState> get copyWith;
}

/// @nodoc
abstract class $ActorSearchStateCopyWith<$Res> {
  factory $ActorSearchStateCopyWith(
          ActorSearchState value, $Res Function(ActorSearchState) then) =
      _$ActorSearchStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      ActorSearchResults actorSearchResults,
      int searchPageNum,
      ActorSearchResults popularActors,
      int popularPageNum});
}

/// @nodoc
class _$ActorSearchStateCopyWithImpl<$Res>
    implements $ActorSearchStateCopyWith<$Res> {
  _$ActorSearchStateCopyWithImpl(this._value, this._then);

  final ActorSearchState _value;
  // ignore: unused_field
  final $Res Function(ActorSearchState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object actorSearchResults = freezed,
    Object searchPageNum = freezed,
    Object popularActors = freezed,
    Object popularPageNum = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      actorSearchResults: actorSearchResults == freezed
          ? _value.actorSearchResults
          : actorSearchResults as ActorSearchResults,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
      popularActors: popularActors == freezed
          ? _value.popularActors
          : popularActors as ActorSearchResults,
      popularPageNum: popularPageNum == freezed
          ? _value.popularPageNum
          : popularPageNum as int,
    ));
  }
}

/// @nodoc
abstract class _$ActorSearchStateCopyWith<$Res>
    implements $ActorSearchStateCopyWith<$Res> {
  factory _$ActorSearchStateCopyWith(
          _ActorSearchState value, $Res Function(_ActorSearchState) then) =
      __$ActorSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      ActorSearchResults actorSearchResults,
      int searchPageNum,
      ActorSearchResults popularActors,
      int popularPageNum});
}

/// @nodoc
class __$ActorSearchStateCopyWithImpl<$Res>
    extends _$ActorSearchStateCopyWithImpl<$Res>
    implements _$ActorSearchStateCopyWith<$Res> {
  __$ActorSearchStateCopyWithImpl(
      _ActorSearchState _value, $Res Function(_ActorSearchState) _then)
      : super(_value, (v) => _then(v as _ActorSearchState));

  @override
  _ActorSearchState get _value => super._value as _ActorSearchState;

  @override
  $Res call({
    Object name = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object actorSearchResults = freezed,
    Object searchPageNum = freezed,
    Object popularActors = freezed,
    Object popularPageNum = freezed,
  }) {
    return _then(_ActorSearchState(
      name: name == freezed ? _value.name : name as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      actorSearchResults: actorSearchResults == freezed
          ? _value.actorSearchResults
          : actorSearchResults as ActorSearchResults,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
      popularActors: popularActors == freezed
          ? _value.popularActors
          : popularActors as ActorSearchResults,
      popularPageNum: popularPageNum == freezed
          ? _value.popularPageNum
          : popularPageNum as int,
    ));
  }
}

/// @nodoc
class _$_ActorSearchState implements _ActorSearchState {
  const _$_ActorSearchState(
      {@required this.name,
      @required this.errorMessage,
      @required this.isSearching,
      @required this.isSearchCompleted,
      @required this.actorSearchResults,
      @required this.searchPageNum,
      @required this.popularActors,
      @required this.popularPageNum})
      : assert(name != null),
        assert(errorMessage != null),
        assert(isSearching != null),
        assert(isSearchCompleted != null),
        assert(actorSearchResults != null),
        assert(searchPageNum != null),
        assert(popularActors != null),
        assert(popularPageNum != null);

  @override
  final String name;
  @override
  final String errorMessage;
  @override
  final bool isSearching;
  @override
  final bool isSearchCompleted;
  @override
  final ActorSearchResults actorSearchResults;
  @override
  final int searchPageNum;
  @override
  final ActorSearchResults popularActors;
  @override
  final int popularPageNum;

  @override
  String toString() {
    return 'ActorSearchState(name: $name, errorMessage: $errorMessage, isSearching: $isSearching, isSearchCompleted: $isSearchCompleted, actorSearchResults: $actorSearchResults, searchPageNum: $searchPageNum, popularActors: $popularActors, popularPageNum: $popularPageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorSearchState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.isSearchCompleted, isSearchCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isSearchCompleted, isSearchCompleted)) &&
            (identical(other.actorSearchResults, actorSearchResults) ||
                const DeepCollectionEquality()
                    .equals(other.actorSearchResults, actorSearchResults)) &&
            (identical(other.searchPageNum, searchPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.searchPageNum, searchPageNum)) &&
            (identical(other.popularActors, popularActors) ||
                const DeepCollectionEquality()
                    .equals(other.popularActors, popularActors)) &&
            (identical(other.popularPageNum, popularPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.popularPageNum, popularPageNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isSearchCompleted) ^
      const DeepCollectionEquality().hash(actorSearchResults) ^
      const DeepCollectionEquality().hash(searchPageNum) ^
      const DeepCollectionEquality().hash(popularActors) ^
      const DeepCollectionEquality().hash(popularPageNum);

  @JsonKey(ignore: true)
  @override
  _$ActorSearchStateCopyWith<_ActorSearchState> get copyWith =>
      __$ActorSearchStateCopyWithImpl<_ActorSearchState>(this, _$identity);
}

abstract class _ActorSearchState implements ActorSearchState {
  const factory _ActorSearchState(
      {@required String name,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required ActorSearchResults actorSearchResults,
      @required int searchPageNum,
      @required ActorSearchResults popularActors,
      @required int popularPageNum}) = _$_ActorSearchState;

  @override
  String get name;
  @override
  String get errorMessage;
  @override
  bool get isSearching;
  @override
  bool get isSearchCompleted;
  @override
  ActorSearchResults get actorSearchResults;
  @override
  int get searchPageNum;
  @override
  ActorSearchResults get popularActors;
  @override
  int get popularPageNum;
  @override
  @JsonKey(ignore: true)
  _$ActorSearchStateCopyWith<_ActorSearchState> get copyWith;
}
