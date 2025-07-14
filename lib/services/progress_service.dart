import 'package:shared_preferences/shared_preferences.dart';

class ProgressService {
  static const String _key = 'completed_days';


  //완료된 일 수 불러오기
  static Future<int> getCompletedDays() async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_key) ?? 0;
  }


  //완료된 일 수를 1 증가시키키
  static Future<void> incrementCompletedDays() async {
    final prefs = await SharedPreferences.getInstance();
    int current = prefs.getInt(_key) ?? 0;
    await prefs.setInt(_key, current +1);
  }
  
    // 초기화 (테스트용)
  static Future<void> resetCompletedDays() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key, 0);
  }
}


