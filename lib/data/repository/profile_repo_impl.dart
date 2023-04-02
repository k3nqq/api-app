import 'package:dio/dio.dart';
import 'package:finances_application/data/model/user.dart';
import 'package:finances_application/domain/repository/profile_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/app_config.dart';

class UserProfileRepositoryImpl extends ProfileRepository
{
  @override
  Future<User?> getUserProfile() async {
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
    Response response = await dio.get("${AppConfig.baseApiURL}/user");
    if (response.statusCode != 200) {
      return null;
    }

    return User.fromJson(response.data["data"]);
  }
  
}