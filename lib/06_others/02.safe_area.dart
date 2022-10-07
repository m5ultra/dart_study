import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SafeAreaDemo()),
    );
  }
}

class SafeAreaDemo extends StatelessWidget {
  const SafeAreaDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.purple[50]);
  }
}
