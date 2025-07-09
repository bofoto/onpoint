import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // 화면의 뼈대
      backgroundColor: Colors.white,
      body: Center(
        child: Text("온점", style: TextStyle(fontSize: 32)),
      ),
    );
  }
}
