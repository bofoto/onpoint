import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final int completedDays;
  final int totalDays;

  const ProgressBar({ required this.completedDays, required this.totalDays });

  @override
  Widget build(BuildContext context) {
    final progressRatio = completedDays / totalDays;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //가로 막대형 진행도 표시
        LinearProgressIndicator(
          value: progressRatio,
          minHeight: 16,
          backgroundColor: Colors.grey[300], // 진척도중 채워지지 않은 공간 색상
          color: Colors.purple[400] //채워진 공간 색상
        ),
        SizedBox(height: 8), //위아래 간격

        //진행률 텍스트 표시
        Text('$completedDays / $totalDays일 완료',
        style: TextStyle(fontSize: 16),
        )
      ]
    );
      
  }
}

