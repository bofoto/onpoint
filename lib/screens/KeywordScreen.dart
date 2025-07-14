import 'package:flutter/material.dart';
import '../screens/ResultScreen.dart';
import '../services/progress_service.dart';

// 화면의 상태가 변하므로 StatefulWidget 사용
class KeywordScreen extends StatefulWidget {
  
  @override
  State<KeywordScreen> createState() => _KeywordScreenState();

}


//실제 UI와 상태를 처리하는 부분
class _KeywordScreenState extends State<KeywordScreen> {
  //8개의 키워드 목록
  final List<String> Keywords = [
    '행복','짜증','설렘','불안',
    '뿌듯','후회','감사','지침'
  ];

  // 사용자가 선택한 키워드를 저장할 리스트
  final List<String> selected = [];

  // 키워드 버튼 클릭 시 실행되는 함수
  void toggleKeyword(String keyword) {
    setState(() {
      if (selected.contains(keyword)){
        //이미 선택된 키워드라면 선택 해재
        selected.remove(keyword);
      }else{
        //아직 선택되지 않았고, 총 4개 미만이라면 추가
        if (selected.length <4){
          selected.add(keyword);
        }
      }

      //4개 선택되면 다음 화면(Resultscreen)으로 이동
      if (selected.length == 4){
        ProgressService.incrementCompletedDays(); //진천도 1 증가
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => ResultScreen(selectedKeywords: selected),
          ),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('오늘의 키워드')),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // 화면 가장자리에 여백 주기
        child: Wrap(
          spacing: 12, //아이템 가로 간격
          runSpacing: 12, //아이템 세로 간격
          children: Keywords.map((keyword) {
            final isSelected = selected.contains(keyword); //선택 여부 확인

            return ChoiceChip(
              label: Text(keyword), //키워드 텍스트 표시
              selected: isSelected, //선택된 상태 반역
              onSelected:(value) => toggleKeyword(keyword), //클릭시 함수 실행
              selectedColor: Colors.blueAccent, //선택시 배경색
              backgroundColor: Colors.grey[200], //비선택 시 배경색
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.black, //글자색
              ),
            );
          }).toList(), // 리스트를 위젯 목록으로 변환
        )
      ),
    );
}


}
