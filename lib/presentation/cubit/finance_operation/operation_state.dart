part of 'operation_cubit.dart';

@immutable
abstract class OperationState{}

class OperationInitial extends OperationState{}

class OperationsFetchedState extends OperationState
{
  final List<FinanceOperation> operations;

  OperationsFetchedState(this.operations);
}

class OperationsErrorState extends OperationState
{

}