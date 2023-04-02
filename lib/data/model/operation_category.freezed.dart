// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationCategory _$OperationCategoryFromJson(Map<String, dynamic> json) {
  return _OperationCategory.fromJson(json);
}

/// @nodoc
mixin _$OperationCategory {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationCategoryCopyWith<OperationCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationCategoryCopyWith<$Res> {
  factory $OperationCategoryCopyWith(
          OperationCategory value, $Res Function(OperationCategory) then) =
      _$OperationCategoryCopyWithImpl<$Res, OperationCategory>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$OperationCategoryCopyWithImpl<$Res, $Val extends OperationCategory>
    implements $OperationCategoryCopyWith<$Res> {
  _$OperationCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OperationCategoryCopyWith<$Res>
    implements $OperationCategoryCopyWith<$Res> {
  factory _$$_OperationCategoryCopyWith(_$_OperationCategory value,
          $Res Function(_$_OperationCategory) then) =
      __$$_OperationCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_OperationCategoryCopyWithImpl<$Res>
    extends _$OperationCategoryCopyWithImpl<$Res, _$_OperationCategory>
    implements _$$_OperationCategoryCopyWith<$Res> {
  __$$_OperationCategoryCopyWithImpl(
      _$_OperationCategory _value, $Res Function(_$_OperationCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_OperationCategory(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OperationCategory
    with DiagnosticableTreeMixin
    implements _OperationCategory {
  const _$_OperationCategory({required this.name});

  factory _$_OperationCategory.fromJson(Map<String, dynamic> json) =>
      _$$_OperationCategoryFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OperationCategory(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OperationCategory'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OperationCategory &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperationCategoryCopyWith<_$_OperationCategory> get copyWith =>
      __$$_OperationCategoryCopyWithImpl<_$_OperationCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperationCategoryToJson(
      this,
    );
  }
}

abstract class _OperationCategory implements OperationCategory {
  const factory _OperationCategory({required final String name}) =
      _$_OperationCategory;

  factory _OperationCategory.fromJson(Map<String, dynamic> json) =
      _$_OperationCategory.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_OperationCategoryCopyWith<_$_OperationCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
