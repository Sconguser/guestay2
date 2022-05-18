import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestay/home/home_navigator_cubit.dart';
import 'package:guestay/shared/constants/background.dart';

import '../auth/auth_repository.dart';
import '../auth/user.dart';

class CongratulationView extends StatelessWidget {
  const CongratulationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration,
        width: 1000,
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Column(
          children: [
            congratulationsText(context),
            homeButton(context),
          ],
        ),
      ),
    );
  }

  Widget congratulationsText(BuildContext context) {
    AuthRepository authRepository = context.read<AuthRepository>();
    User user = authRepository.user;
    return Text('Congratulations ${user.name}. Your booking is confirmed!');
  }

  Widget homeButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _homeButtonPressed(context);
        },
        child: Text('Go back home'));
  }

  void _homeButtonPressed(BuildContext context) {
    context.read<HomeNavigatorCubit>().showHome();
  }
}
