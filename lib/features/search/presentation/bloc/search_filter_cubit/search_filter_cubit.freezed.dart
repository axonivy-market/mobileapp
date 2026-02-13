// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchFilterState {
  SearchType get type;

  /// Create a copy of SearchFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchFilterStateCopyWith<SearchFilterState> get copyWith =>
      _$SearchFilterStateCopyWithImpl<SearchFilterState>(
          this as SearchFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchFilterState &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'SearchFilterState(type: $type)';
  }
}

/// @nodoc
abstract mixin class $SearchFilterStateCopyWith<$Res> {
  factory $SearchFilterStateCopyWith(
          SearchFilterState value, $Res Function(SearchFilterState) _then) =
      _$SearchFilterStateCopyWithImpl;
  @useResult
  $Res call({SearchType type});
}

/// @nodoc
class _$SearchFilterStateCopyWithImpl<$Res>
    implements $SearchFilterStateCopyWith<$Res> {
  _$SearchFilterStateCopyWithImpl(this._self, this._then);

  final SearchFilterState _self;
  final $Res Function(SearchFilterState) _then;

  /// Create a copy of SearchFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchFilterState].
extension SearchFilterStatePatterns on SearchFilterState {
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
    TResult Function(FilterState value)? filter,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FilterState() when filter != null:
        return filter(_that);
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
    required TResult Function(FilterState value) filter,
  }) {
    final _that = this;
    switch (_that) {
      case FilterState():
        return filter(_that);
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
    TResult? Function(FilterState value)? filter,
  }) {
    final _that = this;
    switch (_that) {
      case FilterState() when filter != null:
        return filter(_that);
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
    TResult Function(SearchType type)? filter,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FilterState() when filter != null:
        return filter(_that.type);
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
    required TResult Function(SearchType type) filter,
  }) {
    final _that = this;
    switch (_that) {
      case FilterState():
        return filter(_that.type);
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
    TResult? Function(SearchType type)? filter,
  }) {
    final _that = this;
    switch (_that) {
      case FilterState() when filter != null:
        return filter(_that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

class FilterState implements SearchFilterState {
  const FilterState(this.type);

  @override
  final SearchType type;

  /// Create a copy of SearchFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FilterStateCopyWith<FilterState> get copyWith =>
      _$FilterStateCopyWithImpl<FilterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterState &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'SearchFilterState.filter(type: $type)';
  }
}

/// @nodoc
abstract mixin class $FilterStateCopyWith<$Res>
    implements $SearchFilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) _then) =
      _$FilterStateCopyWithImpl;
  @override
  @useResult
  $Res call({SearchType type});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._self, this._then);

  final FilterState _self;
  final $Res Function(FilterState) _then;

  /// Create a copy of SearchFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(FilterState(
      null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

// dart format on
