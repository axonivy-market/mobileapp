// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'SearchEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent()';
  }
}

/// @nodoc
class $SearchEventCopyWith<$Res> {
  $SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}

/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskProcess value)? getTaskProcess,
    TResult Function(SearchItem value)? searchItem,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskProcess() when getTaskProcess != null:
        return getTaskProcess(_that);
      case SearchItem() when searchItem != null:
        return searchItem(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskProcess value) getTaskProcess,
    required TResult Function(SearchItem value) searchItem,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskProcess():
        return getTaskProcess(_that);
      case SearchItem():
        return searchItem(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskProcess value)? getTaskProcess,
    TResult? Function(SearchItem value)? searchItem,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskProcess() when getTaskProcess != null:
        return getTaskProcess(_that);
      case SearchItem() when searchItem != null:
        return searchItem(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTaskProcess,
    TResult Function(String query, SearchType type)? searchItem,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskProcess() when getTaskProcess != null:
        return getTaskProcess();
      case SearchItem() when searchItem != null:
        return searchItem(_that.query, _that.type);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTaskProcess,
    required TResult Function(String query, SearchType type) searchItem,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskProcess():
        return getTaskProcess();
      case SearchItem():
        return searchItem(_that.query, _that.type);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTaskProcess,
    TResult? Function(String query, SearchType type)? searchItem,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTaskProcess() when getTaskProcess != null:
        return getTaskProcess();
      case SearchItem() when searchItem != null:
        return searchItem(_that.query, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetTaskProcess with DiagnosticableTreeMixin implements SearchEvent {
  const _GetTaskProcess();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'SearchEvent.getTaskProcess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetTaskProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.getTaskProcess()';
  }
}

/// @nodoc

class SearchItem with DiagnosticableTreeMixin implements SearchEvent {
  const SearchItem(this.query, this.type);

  final String query;
  final SearchType type;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchItemCopyWith<SearchItem> get copyWith =>
      _$SearchItemCopyWithImpl<SearchItem>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.searchItem'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchItem &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, type);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.searchItem(query: $query, type: $type)';
  }
}

/// @nodoc
abstract mixin class $SearchItemCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory $SearchItemCopyWith(
          SearchItem value, $Res Function(SearchItem) _then) =
      _$SearchItemCopyWithImpl;
  @useResult
  $Res call({String query, SearchType type});
}

/// @nodoc
class _$SearchItemCopyWithImpl<$Res> implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._self, this._then);

  final SearchItem _self;
  final $Res Function(SearchItem) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? type = null,
  }) {
    return _then(SearchItem(
      null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc
mixin _$SearchState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'SearchState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState()';
  }
}

/// @nodoc
class $SearchStateCopyWith<$Res> {
  $SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}

/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult Function(SearchResultState value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that);
      case TaskProcessLoadedState() when getTaskProcess != null:
        return getTaskProcess(_that);
      case SearchResultState() when loaded != null:
        return loaded(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(TaskProcessLoadedState value) getTaskProcess,
    required TResult Function(SearchResultState value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState():
        return initial(_that);
      case TaskProcessLoadedState():
        return getTaskProcess(_that);
      case SearchResultState():
        return loaded(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(TaskProcessLoadedState value)? getTaskProcess,
    TResult? Function(SearchResultState value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial(_that);
      case TaskProcessLoadedState() when getTaskProcess != null:
        return getTaskProcess(_that);
      case SearchResultState() when loaded != null:
        return loaded(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchItem> items)? getTaskProcess,
    TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial();
      case TaskProcessLoadedState() when getTaskProcess != null:
        return getTaskProcess(_that.items);
      case SearchResultState() when loaded != null:
        return loaded(_that.items, _that.emptyMessage, _that.query);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchItem> items) getTaskProcess,
    required TResult Function(
            List<SearchResult>? items, String? emptyMessage, String query)
        loaded,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState():
        return initial();
      case TaskProcessLoadedState():
        return getTaskProcess(_that.items);
      case SearchResultState():
        return loaded(_that.items, _that.emptyMessage, _that.query);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchItem> items)? getTaskProcess,
    TResult? Function(
            List<SearchResult>? items, String? emptyMessage, String query)?
        loaded,
  }) {
    final _that = this;
    switch (_that) {
      case InitialState() when initial != null:
        return initial();
      case TaskProcessLoadedState() when getTaskProcess != null:
        return getTaskProcess(_that.items);
      case SearchResultState() when loaded != null:
        return loaded(_that.items, _that.emptyMessage, _that.query);
      case _:
        return null;
    }
  }
}

/// @nodoc

class InitialState with DiagnosticableTreeMixin implements SearchState {
  const InitialState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'SearchState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.initial()';
  }
}

/// @nodoc

class TaskProcessLoadedState
    with DiagnosticableTreeMixin
    implements SearchState {
  const TaskProcessLoadedState(final List<SearchItem> items) : _items = items;

  final List<SearchItem> _items;
  List<SearchItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskProcessLoadedStateCopyWith<TaskProcessLoadedState> get copyWith =>
      _$TaskProcessLoadedStateCopyWithImpl<TaskProcessLoadedState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.getTaskProcess'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskProcessLoadedState &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.getTaskProcess(items: $items)';
  }
}

/// @nodoc
abstract mixin class $TaskProcessLoadedStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $TaskProcessLoadedStateCopyWith(TaskProcessLoadedState value,
          $Res Function(TaskProcessLoadedState) _then) =
      _$TaskProcessLoadedStateCopyWithImpl;
  @useResult
  $Res call({List<SearchItem> items});
}

/// @nodoc
class _$TaskProcessLoadedStateCopyWithImpl<$Res>
    implements $TaskProcessLoadedStateCopyWith<$Res> {
  _$TaskProcessLoadedStateCopyWithImpl(this._self, this._then);

  final TaskProcessLoadedState _self;
  final $Res Function(TaskProcessLoadedState) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
  }) {
    return _then(TaskProcessLoadedState(
      null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc

class SearchResultState with DiagnosticableTreeMixin implements SearchState {
  const SearchResultState(
      {final List<SearchResult>? items, this.emptyMessage, this.query = ""})
      : _items = items;

  final List<SearchResult>? _items;
  List<SearchResult>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final String? emptyMessage;
  @JsonKey()
  final String query;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchResultStateCopyWith<SearchResultState> get copyWith =>
      _$SearchResultStateCopyWithImpl<SearchResultState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.loaded'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('emptyMessage', emptyMessage))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchResultState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.emptyMessage, emptyMessage) ||
                other.emptyMessage == emptyMessage) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), emptyMessage, query);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.loaded(items: $items, emptyMessage: $emptyMessage, query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchResultStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchResultStateCopyWith(
          SearchResultState value, $Res Function(SearchResultState) _then) =
      _$SearchResultStateCopyWithImpl;
  @useResult
  $Res call({List<SearchResult>? items, String? emptyMessage, String query});
}

/// @nodoc
class _$SearchResultStateCopyWithImpl<$Res>
    implements $SearchResultStateCopyWith<$Res> {
  _$SearchResultStateCopyWithImpl(this._self, this._then);

  final SearchResultState _self;
  final $Res Function(SearchResultState) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = freezed,
    Object? emptyMessage = freezed,
    Object? query = null,
  }) {
    return _then(SearchResultState(
      items: freezed == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchResult>?,
      emptyMessage: freezed == emptyMessage
          ? _self.emptyMessage
          : emptyMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
