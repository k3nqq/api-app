import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:finances_application/data/model/finance_operation.dart';
import 'package:finances_application/data/repository/finance_operation_repo_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'operation_state.dart';

class OperationCubit extends Cubit<OperationState> {
  OperationCubit() : super(OperationInitial());

  List<FinanceOperation> operations = [];
  String message = "";

  Future<void> fetchOperations() async {
    try {
      operations =
          await FinanceOperationRepositoryImpl().getFinanceOperations();
      log(operations.length.toString());
      emit(OperationsFetchedState(operations));
    } catch (error) {
      message = "Не уадалось загрузить данные";
      emit(OperationsErrorState());
    }
  }
}
