import 'package:flutter/material.dart';
import 'package:onpoint/screens/MainScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // 화면의 뼈대
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen())
            );
          },
          child: Text("시작하기")
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:onpoint/screens/MainScreen.dart'; // 반드시 import 해야 함

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(  // 화면 전환 코드
//               context,
//               MaterialPageRoute(builder: (context) => MainScreen()),
//             );
//           },
//           child: Text("시작하기"),
//         ),
//       ),
//     );
//   }
// }
