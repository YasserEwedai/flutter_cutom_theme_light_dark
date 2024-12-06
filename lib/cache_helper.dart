import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper{
  static late SharedPreferences sharPref;


  static init() async{

    sharPref= await SharedPreferences.getInstance();
  }


}