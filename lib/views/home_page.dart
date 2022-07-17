import 'package:fireauth/blocs/auth/auth_bloc.dart';
import 'package:fireauth/views/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("HomePage"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ProfilePage.routeName);
              },
              icon: const Icon(Icons.account_circle),
            ),
            IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(SignoutEvent());
              },
              icon: const Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: const Center(
          child: Text("Hello There"),
        ),
      ),
    );
  }
}
