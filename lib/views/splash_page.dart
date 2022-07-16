import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/splash-page';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
