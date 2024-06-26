// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabbar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime, Map<dynamic, dynamic> taskInfo)
        navigateTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentTime, Map<dynamic, dynamic> taskInfo)?
        navigateTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime, Map<dynamic, dynamic> taskInfo)?
        navigateTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NavigateTasksState value) navigateTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NavigateTasksState value)? navigateTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NavigateTasksState value)? navigateTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarStateCopyWith<$Res> {
  factory $TabBarStateCopyWith(
          TabBarState value, $Res Function(TabBarState) then) =
      _$TabBarStateCopyWithImpl<$Res, TabBarState>;
}

/// @nodoc
class _$TabBarStateCopyWithImpl<$Res, $Val extends TabBarState>
    implements $TabBarStateCopyWith<$Res> {
  _$TabBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TabBarStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TabBarState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime, Map<dynamic, dynamic> taskInfo)
        navigateTasks,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentTime, Map<dynamic, dynamic> taskInfo)?
        navigateTasks,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime, Map<dynamic, dynamic> taskInfo)?
        navigateTasks,
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
    required TResult Function(Initial value) initial,
    required TResult Function(NavigateTasksState value) navigateTasks,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NavigateTasksState value)? navigateTasks,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NavigateTasksState value)? navigateTasks,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TabBarState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$NavigateTasksStateImplCopyWith<$Res> {
  factory _$$NavigateTasksStateImplCopyWith(_$NavigateTasksStateImpl value,
          $Res Function(_$NavigateTasksStateImpl) then) =
      __$$NavigateTasksStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentTime, Map<dynamic, dynamic> taskInfo});
}

/// @nodoc
class __$$NavigateTasksStateImplCopyWithImpl<$Res>
    extends _$TabBarStateCopyWithImpl<$Res, _$NavigateTasksStateImpl>
    implements _$$NavigateTasksStateImplCopyWith<$Res> {
  __$$NavigateTasksStateImplCopyWithImpl(_$NavigateTasksStateImpl _value,
      $Res Function(_$NavigateTasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? taskInfo = null,
  }) {
    return _then(_$NavigateTasksStateImpl(
      null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == taskInfo
          ? _value._taskInfo
          : taskInfo // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$NavigateTasksStateImpl implements NavigateTasksState {
  const _$NavigateTasksStateImpl(
      this.currentTime, final Map<dynamic, dynamic> taskInfo)
      : _taskInfo = taskInfo;

  @override
  final int currentTime;
  final Map<dynamic, dynamic> _taskInfo;
  @override
  Map<dynamic, dynamic> get taskInfo {
    if (_taskInfo is EqualUnmodifiableMapView) return _taskInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_taskInfo);
  }

  @override
  String toString() {
    return 'TabBarState.navigateTasks(currentTime: $currentTime, taskInfo: $taskInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateTasksStateImpl &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            const DeepCollectionEquality().equals(other._taskInfo, _taskInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentTime, const DeepCollectionEquality().hash(_taskInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateTasksStateImplCopyWith<_$NavigateTasksStateImpl> get copyWith =>
      __$$NavigateTasksStateImplCopyWithImpl<_$NavigateTasksStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime, Map<dynamic, dynamic> taskInfo)
        navigateTasks,
  }) {
    return navigateTasks(currentTime, taskInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentTime, Map<dynamic, dynamic> taskInfo)?
        navigateTasks,
  }) {
    return navigateTasks?.call(currentTime, taskInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime, Map<dynamic, dynamic> taskInfo)?
        navigateTasks,
    required TResult orElse(),
  }) {
    if (navigateTasks != null) {
      return navigateTasks(currentTime, taskInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NavigateTasksState value) navigateTasks,
  }) {
    return navigateTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NavigateTasksState value)? navigateTasks,
  }) {
    return navigateTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NavigateTasksState value)? navigateTasks,
    required TResult orElse(),
  }) {
    if (navigateTasks != null) {
      return navigateTasks(this);
    }
    return orElse();
  }
}

abstract class NavigateTasksState implements TabBarState {
  const factory NavigateTasksState(
          final int currentTime, final Map<dynamic, dynamic> taskInfo) =
      _$NavigateTasksStateImpl;

  int get currentTime;
  Map<dynamic, dynamic> get taskInfo;
  @JsonKey(ignore: true)
  _$$NavigateTasksStateImplCopyWith<_$NavigateTasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
