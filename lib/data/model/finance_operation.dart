import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'operation_category.dart';

part 'finance_operation.freezed.dart';
part 'finance_operation.g.dart';

@freezed
class FinanceOperation with _$FinanceOperation {
  const factory FinanceOperation(
      {int? id,
      String? number,
      String? name,
      String? description,
      DateTime? executionDate,
      double? totalSum,
      OperationCategory? financeOperationCategory,
      bool? deleted}) = _FinanceOperation;

  factory FinanceOperation.fromJson(Map<String, dynamic> json) =>
      _$FinanceOperationFromJson(json);
}
