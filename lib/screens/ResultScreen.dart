import 'package:flutter/material.dart';

//선택된 키워드를 받아서 출력하는 화면
class ResultScreen extends StatelessWidget {
   final List<String> selectedKeywords; // 선택된 키워드를 받을 변수

  // 생성자에서 필수로 selectedKeywords를 받도록 설정
  const ResultScreen({required this.selectedKeywords});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('오늘 하루')), //상단바 타이틀
      body: Padding(
        padding: const EdgeInsets.all(16.0), //전체 여백
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //왼쪽 정렬
          children: [
            Text('오늘 선택한 키워드는:', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20), //간격

            //선택한 키워드를 하나씩 출력
            ...selectedKeywords.map((keyword)=>
            Text("• $keyword", style: TextStyle(fontSize: 18))
            ),

            SizedBox(height:30), //아래간격
       

            //메인으로 돌아가는 버튼
            Center(
              child: ElevatedButton(
                onPressed:() {
                  //첫 화면(SplashScreen)까지 한번에 돌아감
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text('처음으로 돌아가기')
              )
            )
          ]
        )
      )
    );
  }
}