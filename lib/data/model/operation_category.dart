import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_category.freezed.dart';
part 'operation_category.g.dart';

@freezed
class OperationCategory with _$OperationCategory{
  const factory OperationCategory({
    required String name,
  }) = _OperationCategory;

  factory OperationCategory.fromJson(Map<String,dynamic>json) => _$OperationCategoryFromJson(json);
}