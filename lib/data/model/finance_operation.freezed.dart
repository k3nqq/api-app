// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinanceOperation _$FinanceOperationFromJson(Map<String, dynamic> json) {
  return _FinanceOperation.fromJson(json);
}

/// @nodoc
mixin _$FinanceOperation {
  int? get id => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get executionDate => throw _privateConstructorUsedError;
  double? get totalSum => throw _privateConstructorUsedError;
  OperationCategory? get financeOperationCategory =>
      throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinanceOperationCopyWith<FinanceOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceOperationCopyWith<$Res> {
  factory $FinanceOperationCopyWith(
          FinanceOperation value, $Res Function(FinanceOperation) then) =
      _$FinanceOperationCopyWithImpl<$Res, FinanceOperation>;
  @useResult
  $Res call(
      {int? id,
      String? number,
      String? name,
      String? description,
      DateTime? executionDate,
      double? totalSum,
      OperationCategory? financeOperationCategory,
      bool? deleted});

  $OperationCategoryCopyWith<$Res>? get financeOperationCategory;
}

/// @nodoc
class _$FinanceOperationCopyWithImpl<$Res, $Val extends FinanceOperation>
    implements $FinanceOperationCopyWith<$Res> {
  _$FinanceOperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? executionDate = freezed,
    Object? totalSum = freezed,
    Object? financeOperationCategory = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      executionDate: freezed == executionDate
          ? _value.executionDate
          : executionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalSum: freezed == totalSum
          ? _value.totalSum
          : totalSum // ignore: cast_nullable_to_non_nullable
              as double?,
      financeOperationCategory: freezed == financeOperationCategory
          ? _value.financeOperationCategory
          : financeOperationCategory // ignore: cast_nullable_to_non_nullable
              as OperationCategory?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OperationCategoryCopyWith<$Res>? get financeOperationCategory {
    if (_value.financeOperationCategory == null) {
      return null;
    }

    return $OperationCategoryCopyWith<$Res>(_value.financeOperationCategory!,
        (value) {
      return _then(_value.copyWith(financeOperationCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FinanceOperationCopyWith<$Res>
    implements $FinanceOperationCopyWith<$Res> {
  factory _$$_FinanceOperationCopyWith(
          _$_FinanceOperation value, $Res Function(_$_FinanceOperation) then) =
      __$$_FinanceOperationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? number,
      String? name,
      String? description,
      DateTime? executionDate,
      double? totalSum,
      OperationCategory? financeOperationCategory,
      bool? deleted});

  @override
  $OperationCategoryCopyWith<$Res>? get financeOperationCategory;
}

/// @nodoc
class __$$_FinanceOperationCopyWithImpl<$Res>
    extends _$FinanceOperationCopyWithImpl<$Res, _$_FinanceOperation>
    implements _$$_FinanceOperationCopyWith<$Res> {
  __$$_FinanceOperationCopyWithImpl(
      _$_FinanceOperation _value, $Res Function(_$_FinanceOperation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? executionDate = freezed,
    Object? totalSum = freezed,
    Object? financeOperationCategory = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_FinanceOperation(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      executionDate: freezed == executionDate
          ? _value.executionDate
          : executionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalSum: freezed == totalSum
          ? _value.totalSum
          : totalSum // ignore: cast_nullable_to_non_nullable
              as double?,
      financeOperationCategory: freezed == financeOperationCategory
          ? _value.financeOperationCategory
          : financeOperationCategory // ignore: cast_nullable_to_non_nullable
              as OperationCategory?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinanceOperation
    with DiagnosticableTreeMixin
    implements _FinanceOperation {
  const _$_FinanceOperation(
      {this.id,
      this.number,
      this.name,
      this.description,
      this.executionDate,
      this.totalSum,
      this.financeOperationCategory,
      this.deleted});

  factory _$_FinanceOperation.fromJson(Map<String, dynamic> json) =>
      _$$_FinanceOperationFromJson(json);

  @override
  final int? id;
  @override
  final String? number;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? executionDate;
  @override
  final double? totalSum;
  @override
  final OperationCategory? financeOperationCategory;
  @override
  final bool? deleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FinanceOperation(id: $id, number: $number, name: $name, description: $description, executionDate: $executionDate, totalSum: $totalSum, financeOperationCategory: $financeOperationCategory, deleted: $deleted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FinanceOperation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('executionDate', executionDate))
      ..add(DiagnosticsProperty('totalSum', totalSum))
      ..add(DiagnosticsProperty(
          'financeOperationCategory', financeOperationCategory))
      ..add(DiagnosticsProperty('deleted', deleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinanceOperation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.executionDate, executionDate) ||
                other.executionDate == executionDate) &&
            (identical(other.totalSum, totalSum) ||
                other.totalSum == totalSum) &&
            (identical(
                    other.financeOperationCategory, financeOperationCategory) ||
                other.financeOperationCategory == financeOperationCategory) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, name, description,
      executionDate, totalSum, financeOperationCategory, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinanceOperationCopyWith<_$_FinanceOperation> get copyWith =>
      __$$_FinanceOperationCopyWithImpl<_$_FinanceOperation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinanceOperationToJson(
      this,
    );
  }
}

abstract class _FinanceOperation implements FinanceOperation {
  const factory _FinanceOperation(
      {final int? id,
      final String? number,
      final String? name,
      final String? description,
      final DateTime? executionDate,
      final double? totalSum,
      final OperationCategory? financeOperationCategory,
      final bool? deleted}) = _$_FinanceOperation;

  factory _FinanceOperation.fromJson(Map<String, dynamic> json) =
      _$_FinanceOperation.fromJson;

  @override
  int? get id;
  @override
  String? get number;
  @override
  String? get name;
  @override
  String? get description;
  @override
  DateTime? get executionDate;
  @override
  double? get totalSum;
  @override
  OperationCategory? get financeOperationCategory;
  @override
  bool? get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_FinanceOperationCopyWith<_$_FinanceOperation> get copyWith =>
      throw _privateConstructorUsedError;
}
