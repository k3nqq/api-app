import 'dart:developer';

import 'package:finances_application/common/url_page.dart';
import 'package:finances_application/data/model/finance_operation.dart';
import 'package:finances_application/data/repository/finance_operation_repo_impl.dart';
import 'package:finances_application/presentation/auth/authorization_page.dart';
import 'package:finances_application/presentation/auth/register_page.dart';
import 'package:finances_application/presentation/transaction/create_finance_operation.dart';
import 'package:finances_application/presentation/transaction/edit_finance_operation.dart';
import 'package:finances_application/presentation/transaction/finance_operation.dart';
import 'package:finances_application/presentation/user/change_user_password.dart';
import 'package:finances_application/presentation/user/edit_user_profile.dart';
import 'package:finances_application/presentation/user/user_profile.dart';
import 'package:finances_application/utils/service_locator.dart';
import 'package:finances_application/utils/token_provider.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var token = ServiceLocator.getTokenProvider().token;

    return MaterialApp(
      initialRoute: token == null ? UrlPage.authPage : UrlPage.userProfilePage,
      routes: {
        UrlPage.authPage: (context) => AuthorizationPage(),
        UrlPage.changeUserPassword: (context) => ChangePasswordPage(),
        UrlPage.createFinanceOperationPage: (context) =>
            CreateFinanceOperationPage(),
        UrlPage.editFinanceOperationPage: (context) =>
            EditFinanceOperationPage(),
        UrlPage.editUserProfilePage: (context) => EditUserProfilePage(),
        UrlPage.financeOperationsPage: (context) => FinanceOperationPage(),
        UrlPage.registerPage: (context) => RegistrationPage(),
        UrlPage.userProfilePage: (context) => UserProfilePage()
      },
    );
  }
}
