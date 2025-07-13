import 'package:flutter/material.dart';
import 'package:onpoint/screens/KeywordScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 화면의 뼈대
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(title: Text("오늘의 일기")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KeywordScreen()),
            );
          },
          child: Text("오늘의 키워드 선택하기"),
        ),
        /*Text("오늘하루는 어땠나요?", style: TextStyle(fontSize: 32)),*/
      ),
    );
  }
}
