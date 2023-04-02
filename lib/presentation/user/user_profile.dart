import 'package:finances_application/common/url_page.dart';
import 'package:finances_application/utils/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/finance_operation/profile_cubit.dart';

class UserProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false, actions: [
          Container(
              child: IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => {signOut()},
          ))
        ]),
        body: Center(
          child: Column(children: [
            Text("Ваш профиль"),
            BlocProvider(
              create: (context) => ProfileCubit()..fetchUserProfile(),
              child: Center(
                child: BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    if (state is ProfileFetchedState) {
                      return Column(
                        children: [
                          Text("Имя пользователя: ${state.user.userName}"),
                          SizedBox(
                            height: 25,
                          ),
                          Text("Email: ${state.user.email}"),
                        ],
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150, top: 50),
              child: ElevatedButton(
                child: Text("Мои операции"),
                onPressed: () => {
                  Navigator.pushNamed(context, UrlPage.financeOperationsPage)
                },
              ),
            )
          ]),
        ));
  }

  void signOut() {
    ServiceLocator.getTokenProvider().forgetToken();
    Navigator.pushNamed(context, UrlPage.authPage);
  }
}
