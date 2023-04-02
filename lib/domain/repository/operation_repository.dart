import 'package:finances_application/data/model/finance_operation.dart';

abstract class FinanceOperationRepository{
  Future<List<FinanceOperation>> getFinanceOperations();
  Future<FinanceOperation> getFinanceOperation();
  Future<void> insertFinanceOperation(FinanceOperation financeOperation);
  Future<void> deleteFinanceOperation(FinanceOperation financeOperation);
  Future<void> updateFinanceOperation(FinanceOperation financeOperation);
}