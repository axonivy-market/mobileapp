// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabbar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TabBarState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TabBarState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TabBarState()';
  }
}

/// @nodoc
class $TabBarStateCopyWith<$Res> {
  $TabBarStateCopyWith(TabBarState _, $Res Function(TabBarState) __);
}

/// Adds pattern-matching-related methods to [TabBarState].
extension TabBarStatePatterns on TabBarState {
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
    TResult Function(Initial value)? initial,
    TResult Function(NavigateTasksState value)? navigateTasks,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case NavigateTasksState() when navigateTasks != null:
        return navigateTasks(_that);
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
    required TResult Function(Initial value) initial,
    required TResult Function(NavigateTasksState value) navigateTasks,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case NavigateTasksState():
        return navigateTasks(_that);
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
    TResult? Function(Initial value)? initial,
    TResult? Function(NavigateTasksState value)? navigateTasks,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case NavigateTasksState() when navigateTasks != null:
        return navigateTasks(_that);
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
    TResult Function(int currentTime, Map<dynamic, dynamic> taskInfo)?
        navigateTasks,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case NavigateTasksState() when navigateTasks != null:
        return navigateTasks(_that.currentTime, _that.taskInfo);
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
    required TResult Function(int currentTime, Map<dynamic, dynamic> taskInfo)
        navigateTasks,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case NavigateTasksState():
        return navigateTasks(_that.currentTime, _that.taskInfo);
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
    TResult? Function(int currentTime, Map<dynamic, dynamic> taskInfo)?
        navigateTasks,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case NavigateTasksState() when navigateTasks != null:
        return navigateTasks(_that.currentTime, _that.taskInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initial implements TabBarState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TabBarState.initial()';
  }
}

/// @nodoc

class NavigateTasksState implements TabBarState {
  const NavigateTasksState(
      this.currentTime, final Map<dynamic, dynamic> taskInfo)
      : _taskInfo = taskInfo;

  final int currentTime;
  final Map<dynamic, dynamic> _taskInfo;
  Map<dynamic, dynamic> get taskInfo {
    if (_taskInfo is EqualUnmodifiableMapView) return _taskInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_taskInfo);
  }

  /// Create a copy of TabBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NavigateTasksStateCopyWith<NavigateTasksState> get copyWith =>
      _$NavigateTasksStateCopyWithImpl<NavigateTasksState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateTasksState &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            const DeepCollectionEquality().equals(other._taskInfo, _taskInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentTime, const DeepCollectionEquality().hash(_taskInfo));

  @override
  String toString() {
    return 'TabBarState.navigateTasks(currentTime: $currentTime, taskInfo: $taskInfo)';
  }
}

/// @nodoc
abstract mixin class $NavigateTasksStateCopyWith<$Res>
    implements $TabBarStateCopyWith<$Res> {
  factory $NavigateTasksStateCopyWith(
          NavigateTasksState value, $Res Function(NavigateTasksState) _then) =
      _$NavigateTasksStateCopyWithImpl;
  @useResult
  $Res call({int currentTime, Map<dynamic, dynamic> taskInfo});
}

/// @nodoc
class _$NavigateTasksStateCopyWithImpl<$Res>
    implements $NavigateTasksStateCopyWith<$Res> {
  _$NavigateTasksStateCopyWithImpl(this._self, this._then);

  final NavigateTasksState _self;
  final $Res Function(NavigateTasksState) _then;

  /// Create a copy of TabBarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTime = null,
    Object? taskInfo = null,
  }) {
    return _then(NavigateTasksState(
      null == currentTime
          ? _self.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == taskInfo
          ? _self._taskInfo
          : taskInfo // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

// dart format on
