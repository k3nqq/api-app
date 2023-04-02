import 'package:finances_application/utils/token_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServiceLocator
{
  ServiceLocator()
  {
    GetIt.instance.registerSingleton<TokenProvider>(TokenProvider());
  }

  static TokenProvider getTokenProvider() => GetIt.instance.get<TokenProvider>();
}