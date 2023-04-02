import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:finances_application/data/model/finance_operation.dart';
import 'package:finances_application/utils/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/app_config.dart';
import '../../domain/repository/operation_repository.dart';

class FinanceOperationRepositoryImpl implements FinanceOperationRepository {
  @override
  Future<void> deleteFinanceOperation(FinanceOperation financeOperation) {
    // TODO: implement deleteFinanceOperation
    throw UnimplementedError();
  }

  @override
  Future<FinanceOperation> getFinanceOperation() {
    // TODO: implement getFinanceOperation
    throw UnimplementedError();
  }

  @override
  Future<List<FinanceOperation>> getFinanceOperations() async {
    //String? token = ServiceLocator.getTokenProvider().token;
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final dio = Dio(
      BaseOptions(
        headers: {
          "Authorization": "Bearer $token",
        },
        validateStatus: (status) => true,
      ),
    );
    Response response = await dio.get("${AppConfig.baseApiURL}/operations");
    if (response.statusCode != 200) {
      return [];
    }

    final jsonList = response.data as List<dynamic>;
    return jsonList.map((e) => FinanceOperation.fromJson(e)).toList();
  }

  @override
  Future<void> insertFinanceOperation(FinanceOperation financeOperation) {
    // TODO: implement insertFinanceOperation
    throw UnimplementedError();
  }

  @override
  Future<void> updateFinanceOperation(FinanceOperation financeOperation) {
    // TODO: implement updateFinanceOperation
    throw UnimplementedError();
  }
}
