// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinanceOperation _$$_FinanceOperationFromJson(Map<String, dynamic> json) =>
    _$_FinanceOperation(
      id: json['id'] as int?,
      number: json['number'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      executionDate: json['executionDate'] == null
          ? null
          : DateTime.parse(json['executionDate'] as String),
      totalSum: (json['totalSum'] as num?)?.toDouble(),
      financeOperationCategory: json['financeOperationCategory'] == null
          ? null
          : OperationCategory.fromJson(
              json['financeOperationCategory'] as Map<String, dynamic>),
      deleted: json['deleted'] as bool?,
    );

Map<String, dynamic> _$$_FinanceOperationToJson(_$_FinanceOperation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'description': instance.description,
      'executionDate': instance.executionDate?.toIso8601String(),
      'totalSum': instance.totalSum,
      'financeOperationCategory': instance.financeOperationCategory,
      'deleted': instance.deleted,
    };
