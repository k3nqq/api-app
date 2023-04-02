import 'package:dio/dio.dart';
import 'package:finances_application/common/app_config.dart';
import 'package:finances_application/data/model/user.dart';
import 'package:finances_application/domain/repository/auth_repo.dart';
import 'package:flutter/material.dart';

import '../../common/url_page.dart';
import '../../data/repository/auth_repo_impl.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  GlobalKey<FormState> _key = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  bool isObscure = true;
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Регистрация",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100, right: 100, top: 15),
                child: TextFormField(
                  controller: _loginController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле логин пустое';
                    }
                    if (value.length < 2) {
                      return 'Логин должен содержать не менее 2 символов';
                    }
                    if (value.contains(RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])$'))) {
                      return 'Логин должен содержать минимум 1 цифру, 1 спец. символ, 1 строчную и 1 заглавную латинскую букву';
                    }
                    return null;
                  },
                  maxLength: 16,
                  decoration: const InputDecoration(
                    labelText: 'Имя пользователя',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100, right: 100, top: 15),
                child: TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле email пустое';
                    }
                    if (value.length < 2) {
                      return 'Email должен содержать не менее 2 символов';
                    }
                    return null;
                  },
                  maxLength: 16,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100, right: 100, top: 15),
                child: TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле пароль пустое';
                    }
                    if (value.length < 2) {
                      return 'Пароль должен содержать не менее 2 символов';
                    }
                    if (value.contains(RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])$'))) {
                      return 'Пароль должен содержать минимум 1 цифру, 1 спец. символ, 1 строчную и 1 заглавную латинскую букву';
                    }
                    return null;
                  },
                  maxLength: 10,
                  decoration: const InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 150, right: 150, top: 50),
                  child: ElevatedButton(
                    child: Text("Создать аккаунт"),
                    onPressed: () => {
                      _isValid = true,
                      if (_key.currentState!.validate())
                        {
                          register(),
                          _loginController.clear(),
                          _emailController.clear(),
                          _passwordController.clear(),
                        },
                    },
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 150, right: 150, top: 50),
                  child: ElevatedButton(
                    child: Text("Авторизация"),
                    onPressed: () => {
                      Navigator.pushNamed(context, UrlPage.authPage),
                      _loginController.clear(),
                      _emailController.clear(),
                      _passwordController.clear(),
                    },
                  )),
            ],
          ),
        ),
      )),
    );
  }

  Future<void> register() async {
    User user = new User(
        userName: _loginController.text,
        email: _emailController.text,
        password: _passwordController.text);
    bool result = await AuthorizationRepositoryImpl().register(user);
    if (result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Успешная регистрация"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Не удалось зарегистрироваться"),
        ),
      );
    }
  }
}
