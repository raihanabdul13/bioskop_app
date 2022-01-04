import 'package:shared_preferences/shared_preferences.dart';

class Preferensi{
  static late SharedPreferences _sharedPreferences;

  factory Preferensi() => Preferensi._internal();
  Preferensi._internal();
  //future
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  List<String> blackList = [];

  set setNama(String name){
    _sharedPreferences.setString('name', name);
  }

  String get getNama => _sharedPreferences.getString('name') ?? '';

  set setEmail(String email){
    _sharedPreferences.setString('email', email);
  }

  String get getEmail => _sharedPreferences.getString('email') ?? '';

  set setGenre(List<String> genre){
    _sharedPreferences.setStringList('genre', genre);
  }

  List<String> get getGenre => _sharedPreferences.getStringList('genre') ?? blackList;

  set setLanguage(String lang){
    _sharedPreferences.setString('language', lang);
  }

  String get getLanguage => _sharedPreferences.getString('language') ?? '';

}