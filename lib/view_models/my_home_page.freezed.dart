// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_home_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyHomePageStateTearOff {
  const _$MyHomePageStateTearOff();

  _MyHomePageState call({required Counter counter}) {
    return _MyHomePageState(
      counter: counter,
    );
  }
}

/// @nodoc
const $MyHomePageState = _$MyHomePageStateTearOff();

/// @nodoc
mixin _$MyHomePageState {
  Counter get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyHomePageStateCopyWith<MyHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomePageStateCopyWith<$Res> {
  factory $MyHomePageStateCopyWith(
          MyHomePageState value, $Res Function(MyHomePageState) then) =
      _$MyHomePageStateCopyWithImpl<$Res>;
  $Res call({Counter counter});

  $CounterCopyWith<$Res> get counter;
}

/// @nodoc
class _$MyHomePageStateCopyWithImpl<$Res>
    implements $MyHomePageStateCopyWith<$Res> {
  _$MyHomePageStateCopyWithImpl(this._value, this._then);

  final MyHomePageState _value;
  // ignore: unused_field
  final $Res Function(MyHomePageState) _then;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as Counter,
    ));
  }

  @override
  $CounterCopyWith<$Res> get counter {
    return $CounterCopyWith<$Res>(_value.counter, (value) {
      return _then(_value.copyWith(counter: value));
    });
  }
}

/// @nodoc
abstract class _$MyHomePageStateCopyWith<$Res>
    implements $MyHomePageStateCopyWith<$Res> {
  factory _$MyHomePageStateCopyWith(
          _MyHomePageState value, $Res Function(_MyHomePageState) then) =
      __$MyHomePageStateCopyWithImpl<$Res>;
  @override
  $Res call({Counter counter});

  @override
  $CounterCopyWith<$Res> get counter;
}

/// @nodoc
class __$MyHomePageStateCopyWithImpl<$Res>
    extends _$MyHomePageStateCopyWithImpl<$Res>
    implements _$MyHomePageStateCopyWith<$Res> {
  __$MyHomePageStateCopyWithImpl(
      _MyHomePageState _value, $Res Function(_MyHomePageState) _then)
      : super(_value, (v) => _then(v as _MyHomePageState));

  @override
  _MyHomePageState get _value => super._value as _MyHomePageState;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_MyHomePageState(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as Counter,
    ));
  }
}

/// @nodoc

class _$_MyHomePageState implements _MyHomePageState {
  _$_MyHomePageState({required this.counter});

  @override
  final Counter counter;

  @override
  String toString() {
    return 'MyHomePageState(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyHomePageState &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counter);

  @JsonKey(ignore: true)
  @override
  _$MyHomePageStateCopyWith<_MyHomePageState> get copyWith =>
      __$MyHomePageStateCopyWithImpl<_MyHomePageState>(this, _$identity);
}

abstract class _MyHomePageState implements MyHomePageState {
  factory _MyHomePageState({required Counter counter}) = _$_MyHomePageState;

  @override
  Counter get counter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyHomePageStateCopyWith<_MyHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
