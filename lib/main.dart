import 'package:onpoint/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(OnPointApp());
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Text('dkssud')
      //home: Image.asset('croco.jpg')
      //home: SizedBox --> Conteiner
      //home: Container( width: 50, height: 50, color: Colors.greenAccent /*.fromARGB(255, 10, 165, 255)*/)
      // home: Center(
      //   child: Container( width:50, height: 50, color: const Color.fromARGB(255, 209, 14, 14),
      //     )        
      //   )
    /******************************************************/
      home: Scaffold(
        appBar: AppBar(title: Text('앱임')),
        
        body: Text(
          '안녕'
        ),
        bottomNavigationBar: BottomAppBar( child: SizedBox(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message , color: Colors.blueAccent),
              Icon(Icons.contact_page),
              ],),
        ),),
      )

    );
  }
}
*/
class OnPointApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '온점',
      home: SplashScreen(),
    );
  }
}

