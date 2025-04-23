import 'package:flutter/material.dart';
import 'package:mobile/utils/app_palette.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.antiFlashWhite,
      appBar: AppBar(
        title: const Text("GYM Buddy"),
        centerTitle: true,
        elevation: 1,
        backgroundColor: AppPalette.antiFlashWhite,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Bem-vindo ao Gym Buddy!!!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
