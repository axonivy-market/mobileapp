// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTaskProcess,
    required TResult Function(String query, SearchType type) searchItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTaskProcess,
    TResult? Function(String query, SearchType type)? searchItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTaskProcess,
    TResult Function(String query, SearchType type)? searchItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskProcess value) getTaskProcess,
    required TResult Function(SearchItem value) searchItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskProcess value)? getTaskProcess,
    TResult? Function(SearchItem value)? searchItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskProcess value)? getTaskProcess,
    TResult Function(SearchItem value)? searchItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTaskProcessImplCopyWith<$Res> {
  factory _$$GetTaskProcessImplCopyWith(_$GetTaskProcessImpl value,
          $Res Function(_$GetTaskProcessImpl) then) =
      __$$GetTaskProcessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTaskProcessImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetTaskProcessImpl>
    implements _$$GetTaskProcessImplCopyWith<$Res> {
  __$$GetTaskProcessImplCopyWithImpl(
      _$GetTaskProcessImpl _value, $Res Function(_$GetTaskProcessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTaskProcessImpl
    with DiagnosticableTreeMixin
    implements _GetTaskProcess {
  const _$GetTaskProcessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.getTaskProcess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchEvent.getTaskProcess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTaskProcessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTaskProcess,
    required TResult Function(String query, SearchType type) searchItem,
  }) {
    return getTaskProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTaskProcess,
    TResult? Function(String query, SearchType type)? searchItem,
  }) {
    return getTaskProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTaskProcess,
    TResult Function(String query, SearchType type)? searchItem,
    required TResult orElse(),
  }) {
    if (getTaskProcess != null) {
      return getTaskProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskProcess value) getTaskProcess,
    required TResult Function(SearchItem value) searchItem,
  }) {
    return getTaskProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskProcess value)? getTaskProcess,
    TResult? Function(SearchItem value)? searchItem,
  }) {
    return getTaskProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskProcess value)? getTaskProcess,
    TResult Function(SearchItem value)? searchItem,
    required TResult orElse(),
  }) {
    if (getTaskProcess != null) {
      return getTaskProcess(this);
    }
    return orElse();
  }
}

abstract class _GetTaskProcess implements SearchEvent {
  const factory _GetTaskProcess() = _$GetTaskProcessImpl;
}

/// @nodoc
abstract class _$$SearchItemImplCopyWith<$Res> {
  factory _$$SearchItemImplCopyWith(
          _$SearchItemImpl value, $Res Function(_$SearchItemImpl) then) =
      __$$SearchItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, SearchType type});
}

/// @nodoc
class __$$SearchItemImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchItemImpl>
    implements _$$SearchItemImplCopyWith<$Res> {
  __$$SearchItemImplCopyWithImpl(
      _$SearchItemImpl _value, $Res Function(_$SearchItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? type = null,
  }) {
    return _then(_$SearchItemImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc

class _$SearchItemImpl with DiagnosticableTreeMixin implements SearchItem {
  const _$SearchItemImpl(this.query, this.type);

  @override
  final String query;
  @override
  final SearchType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.searchItem(query: $query, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.searchItem'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchItemImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchItemImplCopyWith<_$SearchItemImpl> get copyWith =>
      __$$SearchItemImplCopyWithImpl<_$SearchItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTaskProcess,
    required TResult Function(String query, SearchType type) searchItem,
  }) {
    return searchItem(query, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTaskProcess,
    TResult? Function(String query, SearchType type)? searchItem,
  }) {
    return searchItem?.call(query, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTaskProcess,
    TResult Function(String query, SearchType type)? searchItem,
    required TResult orElse(),
  }) {
    if (searchItem != null) {
      return searchItem(query, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskProcess value) getTaskProcess,
    required TResult Function(SearchItem value) searchItem,
  }) {
    return searchItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskProcess value)? getTaskProcess,
    TResult? Function(SearchItem value)? searchItem,
  }) {
    return searchItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskProcess value)? getTaskProcess,
    TResult Function(SearchItem value)? searchItem,
    required TResult orElse(),
  }) {
    if (searchItem != null) {
      return searchItem(this);
    }
    return orElse();
  }
}

abstract class SearchItem implements SearchEvent {
  const factory SearchItem(final String query, final SearchType type) =
      _$SearchItemImpl;

  String get query;
  SearchType get type;
  @JsonKey(ignore: true)
  _$$SearchItemImplCopyWith<_$SearchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchItem> items) getTaskProcess,
    required TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchItem> items)? getTaskProcess,
    TResult? Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchItem> items)? getTaskProcess,
    TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(TaskProcessLoadedState value) getTaskProcess,
    required TResult Function(SearchResultState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult? Function(SearchResultState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult Function(SearchResultState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl with DiagnosticableTreeMixin implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchItem> items) getTaskProcess,
    required TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchItem> items)? getTaskProcess,
    TResult? Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchItem> items)? getTaskProcess,
    TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(TaskProcessLoadedState value) getTaskProcess,
    required TResult Function(SearchResultState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult? Function(SearchResultState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult Function(SearchResultState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements SearchState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$TaskProcessLoadedStateImplCopyWith<$Res> {
  factory _$$TaskProcessLoadedStateImplCopyWith(
          _$TaskProcessLoadedStateImpl value,
          $Res Function(_$TaskProcessLoadedStateImpl) then) =
      __$$TaskProcessLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchItem> items});
}

/// @nodoc
class __$$TaskProcessLoadedStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$TaskProcessLoadedStateImpl>
    implements _$$TaskProcessLoadedStateImplCopyWith<$Res> {
  __$$TaskProcessLoadedStateImplCopyWithImpl(
      _$TaskProcessLoadedStateImpl _value,
      $Res Function(_$TaskProcessLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$TaskProcessLoadedStateImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc

class _$TaskProcessLoadedStateImpl
    with DiagnosticableTreeMixin
    implements TaskProcessLoadedState {
  const _$TaskProcessLoadedStateImpl(final List<SearchItem> items)
      : _items = items;

  final List<SearchItem> _items;
  @override
  List<SearchItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.getTaskProcess(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.getTaskProcess'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskProcessLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskProcessLoadedStateImplCopyWith<_$TaskProcessLoadedStateImpl>
      get copyWith => __$$TaskProcessLoadedStateImplCopyWithImpl<
          _$TaskProcessLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchItem> items) getTaskProcess,
    required TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)
        loaded,
  }) {
    return getTaskProcess(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchItem> items)? getTaskProcess,
    TResult? Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
  }) {
    return getTaskProcess?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchItem> items)? getTaskProcess,
    TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
    required TResult orElse(),
  }) {
    if (getTaskProcess != null) {
      return getTaskProcess(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(TaskProcessLoadedState value) getTaskProcess,
    required TResult Function(SearchResultState value) loaded,
  }) {
    return getTaskProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult? Function(SearchResultState value)? loaded,
  }) {
    return getTaskProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult Function(SearchResultState value)? loaded,
    required TResult orElse(),
  }) {
    if (getTaskProcess != null) {
      return getTaskProcess(this);
    }
    return orElse();
  }
}

abstract class TaskProcessLoadedState implements SearchState {
  const factory TaskProcessLoadedState(final List<SearchItem> items) =
      _$TaskProcessLoadedStateImpl;

  List<SearchItem> get items;
  @JsonKey(ignore: true)
  _$$TaskProcessLoadedStateImplCopyWith<_$TaskProcessLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchResultStateImplCopyWith<$Res> {
  factory _$$SearchResultStateImplCopyWith(_$SearchResultStateImpl value,
          $Res Function(_$SearchResultStateImpl) then) =
      __$$SearchResultStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchResult>? items, String? emptyMessage, String query});
}

/// @nodoc
class __$$SearchResultStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchResultStateImpl>
    implements _$$SearchResultStateImplCopyWith<$Res> {
  __$$SearchResultStateImplCopyWithImpl(_$SearchResultStateImpl _value,
      $Res Function(_$SearchResultStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? emptyMessage = freezed,
    Object? query = null,
  }) {
    return _then(_$SearchResultStateImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchResult>?,
      emptyMessage: freezed == emptyMessage
          ? _value.emptyMessage
          : emptyMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchResultStateImpl
    with DiagnosticableTreeMixin
    implements SearchResultState {
  const _$SearchResultStateImpl(
      {final List<SearchResult>? items, this.emptyMessage, this.query = ""})
      : _items = items;

  final List<SearchResult>? _items;
  @override
  List<SearchResult>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? emptyMessage;
  @override
  @JsonKey()
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.loaded(items: $items, emptyMessage: $emptyMessage, query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.loaded'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('emptyMessage', emptyMessage))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.emptyMessage, emptyMessage) ||
                other.emptyMessage == emptyMessage) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), emptyMessage, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultStateImplCopyWith<_$SearchResultStateImpl> get copyWith =>
      __$$SearchResultStateImplCopyWithImpl<_$SearchResultStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchItem> items) getTaskProcess,
    required TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)
        loaded,
  }) {
    return loaded(items, emptyMessage, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchItem> items)? getTaskProcess,
    TResult? Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
  }) {
    return loaded?.call(items, emptyMessage, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchItem> items)? getTaskProcess,
    TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items, emptyMessage, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(TaskProcessLoadedState value) getTaskProcess,
    required TResult Function(SearchResultState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult? Function(SearchResultState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult Function(SearchResultState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchResultState implements SearchState {
  const factory SearchResultState(
      {final List<SearchResult>? items,
      final String? emptyMessage,
      final String query}) = _$SearchResultStateImpl;

  List<SearchResult>? get items;
  String? get emptyMessage;
  String get query;
  @JsonKey(ignore: true)
  _$$SearchResultStateImplCopyWith<_$SearchResultStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
