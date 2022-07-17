import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("HomePage"),
        ),
        body: const Center(
          child: Text("Hello There"),
        ),
      ),
    );
  }
}
