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

  _MyHomePageState call(
      {required List<Item> items,
      required String? nextToken,
      required bool initializing}) {
    return _MyHomePageState(
      items: items,
      nextToken: nextToken,
      initializing: initializing,
    );
  }
}

/// @nodoc
const $MyHomePageState = _$MyHomePageStateTearOff();

/// @nodoc
mixin _$MyHomePageState {
  List<Item> get items => throw _privateConstructorUsedError;
  String? get nextToken => throw _privateConstructorUsedError;
  bool get initializing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyHomePageStateCopyWith<MyHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomePageStateCopyWith<$Res> {
  factory $MyHomePageStateCopyWith(
          MyHomePageState value, $Res Function(MyHomePageState) then) =
      _$MyHomePageStateCopyWithImpl<$Res>;
  $Res call({List<Item> items, String? nextToken, bool initializing});
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
    Object? items = freezed,
    Object? nextToken = freezed,
    Object? initializing = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      initializing: initializing == freezed
          ? _value.initializing
          : initializing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MyHomePageStateCopyWith<$Res>
    implements $MyHomePageStateCopyWith<$Res> {
  factory _$MyHomePageStateCopyWith(
          _MyHomePageState value, $Res Function(_MyHomePageState) then) =
      __$MyHomePageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Item> items, String? nextToken, bool initializing});
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
    Object? items = freezed,
    Object? nextToken = freezed,
    Object? initializing = freezed,
  }) {
    return _then(_MyHomePageState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      initializing: initializing == freezed
          ? _value.initializing
          : initializing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MyHomePageState implements _MyHomePageState {
  _$_MyHomePageState(
      {required this.items,
      required this.nextToken,
      required this.initializing});

  @override
  final List<Item> items;
  @override
  final String? nextToken;
  @override
  final bool initializing;

  @override
  String toString() {
    return 'MyHomePageState(items: $items, nextToken: $nextToken, initializing: $initializing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyHomePageState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)) &&
            (identical(other.initializing, initializing) ||
                const DeepCollectionEquality()
                    .equals(other.initializing, initializing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(initializing);

  @JsonKey(ignore: true)
  @override
  _$MyHomePageStateCopyWith<_MyHomePageState> get copyWith =>
      __$MyHomePageStateCopyWithImpl<_MyHomePageState>(this, _$identity);
}

abstract class _MyHomePageState implements MyHomePageState {
  factory _MyHomePageState(
      {required List<Item> items,
      required String? nextToken,
      required bool initializing}) = _$_MyHomePageState;

  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  String? get nextToken => throw _privateConstructorUsedError;
  @override
  bool get initializing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyHomePageStateCopyWith<_MyHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
