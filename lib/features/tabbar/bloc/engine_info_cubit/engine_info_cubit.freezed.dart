// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'engine_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EngineInfoState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EngineInfoState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EngineInfoState()';
  }
}

/// @nodoc
class $EngineInfoStateCopyWith<$Res> {
  $EngineInfoStateCopyWith(
      EngineInfoState _, $Res Function(EngineInfoState) __);
}

/// Adds pattern-matching-related methods to [EngineInfoState].
extension EngineInfoStatePatterns on EngineInfoState {
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
    TResult Function(Initialize value)? initialize,
    TResult Function(GetEngineInfo value)? getEngineInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initialize() when initialize != null:
        return initialize(_that);
      case GetEngineInfo() when getEngineInfo != null:
        return getEngineInfo(_that);
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
    required TResult Function(Initialize value) initialize,
    required TResult Function(GetEngineInfo value) getEngineInfo,
  }) {
    final _that = this;
    switch (_that) {
      case Initialize():
        return initialize(_that);
      case GetEngineInfo():
        return getEngineInfo(_that);
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
    TResult? Function(Initialize value)? initialize,
    TResult? Function(GetEngineInfo value)? getEngineInfo,
  }) {
    final _that = this;
    switch (_that) {
      case Initialize() when initialize != null:
        return initialize(_that);
      case GetEngineInfo() when getEngineInfo != null:
        return getEngineInfo(_that);
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
    TResult Function()? initialize,
    TResult Function(EngineInfo? engineInfo)? getEngineInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initialize() when initialize != null:
        return initialize();
      case GetEngineInfo() when getEngineInfo != null:
        return getEngineInfo(_that.engineInfo);
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
    required TResult Function() initialize,
    required TResult Function(EngineInfo? engineInfo) getEngineInfo,
  }) {
    final _that = this;
    switch (_that) {
      case Initialize():
        return initialize();
      case GetEngineInfo():
        return getEngineInfo(_that.engineInfo);
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
    TResult? Function()? initialize,
    TResult? Function(EngineInfo? engineInfo)? getEngineInfo,
  }) {
    final _that = this;
    switch (_that) {
      case Initialize() when initialize != null:
        return initialize();
      case GetEngineInfo() when getEngineInfo != null:
        return getEngineInfo(_that.engineInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initialize implements EngineInfoState {
  const Initialize();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EngineInfoState.initialize()';
  }
}

/// @nodoc

class GetEngineInfo implements EngineInfoState {
  const GetEngineInfo({this.engineInfo = null});

  @JsonKey()
  final EngineInfo? engineInfo;

  /// Create a copy of EngineInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetEngineInfoCopyWith<GetEngineInfo> get copyWith =>
      _$GetEngineInfoCopyWithImpl<GetEngineInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetEngineInfo &&
            (identical(other.engineInfo, engineInfo) ||
                other.engineInfo == engineInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, engineInfo);

  @override
  String toString() {
    return 'EngineInfoState.getEngineInfo(engineInfo: $engineInfo)';
  }
}

/// @nodoc
abstract mixin class $GetEngineInfoCopyWith<$Res>
    implements $EngineInfoStateCopyWith<$Res> {
  factory $GetEngineInfoCopyWith(
          GetEngineInfo value, $Res Function(GetEngineInfo) _then) =
      _$GetEngineInfoCopyWithImpl;
  @useResult
  $Res call({EngineInfo? engineInfo});

  $EngineInfoCopyWith<$Res>? get engineInfo;
}

/// @nodoc
class _$GetEngineInfoCopyWithImpl<$Res>
    implements $GetEngineInfoCopyWith<$Res> {
  _$GetEngineInfoCopyWithImpl(this._self, this._then);

  final GetEngineInfo _self;
  final $Res Function(GetEngineInfo) _then;

  /// Create a copy of EngineInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? engineInfo = freezed,
  }) {
    return _then(GetEngineInfo(
      engineInfo: freezed == engineInfo
          ? _self.engineInfo
          : engineInfo // ignore: cast_nullable_to_non_nullable
              as EngineInfo?,
    ));
  }

  /// Create a copy of EngineInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EngineInfoCopyWith<$Res>? get engineInfo {
    if (_self.engineInfo == null) {
      return null;
    }

    return $EngineInfoCopyWith<$Res>(_self.engineInfo!, (value) {
      return _then(_self.copyWith(engineInfo: value));
    });
  }
}

// dart format on
