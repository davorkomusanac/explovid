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
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchNameChanged(_SearchNameChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
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
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return searchNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
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
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return searchNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
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
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return deleteSearchPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
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
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return deleteSearchPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
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
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return nextResultPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchNameChanged(String name),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
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
  }) {
    assert(searchNameChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    return nextResultPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchNameChanged(_SearchNameChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
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
class _$ActorSearchStateTearOff {
  const _$ActorSearchStateTearOff();

// ignore: unused_element
  _ActorSearchState call(
      {@required String name,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required ActorSearchResults actorSearchResults,
      @required int searchPageNum}) {
    return _ActorSearchState(
      name: name,
      errorMessage: errorMessage,
      isSearching: isSearching,
      isSearchCompleted: isSearchCompleted,
      actorSearchResults: actorSearchResults,
      searchPageNum: searchPageNum,
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
      int searchPageNum});
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
      int searchPageNum});
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
      @required this.searchPageNum})
      : assert(name != null),
        assert(errorMessage != null),
        assert(isSearching != null),
        assert(isSearchCompleted != null),
        assert(actorSearchResults != null),
        assert(searchPageNum != null);

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
  String toString() {
    return 'ActorSearchState(name: $name, errorMessage: $errorMessage, isSearching: $isSearching, isSearchCompleted: $isSearchCompleted, actorSearchResults: $actorSearchResults, searchPageNum: $searchPageNum)';
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
                    .equals(other.searchPageNum, searchPageNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isSearchCompleted) ^
      const DeepCollectionEquality().hash(actorSearchResults) ^
      const DeepCollectionEquality().hash(searchPageNum);

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
      @required int searchPageNum}) = _$_ActorSearchState;

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
  @JsonKey(ignore: true)
  _$ActorSearchStateCopyWith<_ActorSearchState> get copyWith;
}
