import 'package:flutter/material.dart';
import '../widgets/progress_bar.dart';
import '../services/progress_service.dart';
import 'package:onpoint/screens/KeywordScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int completedDays = 0; //초기값
  final int totalDays = 30;

  @override
  void initState() {
    super.initState();
    loadProgress(); // 앱시작시 전장된 값 불러오기
  }

  void loadProgress() async {
    int saved = await ProgressService.getCompletedDays();
    print('저장된 진척도 불러오기: $saved'); // 로그 추가
    setState(() {
      completedDays = saved;
    });
  }

  // 임시 진척도 값 *저장 기능으로 대체됨

  //final int completedDays = 19; // 지금까지 완료한 일 수
  //final int totalDays = 30; // 목표 일 수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 화면의 뼈대
      //backgroundColor: Colors.yellow[100],
      appBar: AppBar(title: Text("오늘의 일기")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽정력
          children: [
            // 안내문구
            Text("오늘 하루는 어땠나요?", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20), //간격
            //진척도 표시 위잿 삽입
            ProgressBar(completedDays: completedDays, totalDays: totalDays),
            SizedBox(height: 40), //아래 간격
            // 키워드 선택 화면으로 이동하는 버튼
            Center(
              child: ElevatedButton(
                child: Text("오늘의 키워드 선택하기"),
                onPressed: () {
                  // 버튼 클릭시 KeywordScreen 으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => KeywordScreen()),
                  );
                  //키워드 선택후 복귀시 진척도 다시 불러오기
                  loadProgress();
                },
              ),
            ),
          ],
        ),
      ),
      /* 기초 화면 =======================================================
      Center(
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
      */
    );
  }
}
