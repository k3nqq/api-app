import 'package:finances_application/common/url_page.dart';
import 'package:finances_application/presentation/cubit/finance_operation/operation_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FinanceOperationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FinanceOperationPageState();
}

class _FinanceOperationPageState extends State<FinanceOperationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: BlocProvider(
        create: (context) => OperationCubit()..fetchOperations(),
        child: Center(
          child: BlocBuilder<OperationCubit, OperationState>(
            builder: (context, state) {
              if (state is OperationsFetchedState) {
                return ListView.builder(
                    itemCount: state.operations.length,
                    itemBuilder: ((context, index) {
                      final operation = state.operations[index];
                      return Container(
                        child: Column(children: [
                          Text(
                            "Финансовая операция № ${operation.number}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Название: ${operation.name}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Сумма: ${operation.totalSum}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Категория: ${operation.financeOperationCategory!.name}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, UrlPage.userProfilePage);
                              },
                              child: Text("Профиль")),
                          SizedBox(
                            height: 25,
                          ),
                        ]),
                      );
                    }));
              }

              return Container();
            },
          ),
        ),
      )),
    );
  }
}
