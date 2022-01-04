
import 'package:bioskop_app/Model/preferensi.dart';
import 'package:flutter/material.dart';
import '../Model/User.dart';
class Nextpage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(Preferensi().getNama),
          Text(Preferensi().getEmail),
          Text(Preferensi().getLanguage),
          Column(
            children: textGenre(),
          )
        ],
      ),
    );
  }
  List<Widget> textGenre(){
    List<Widget> widget = [];
    Preferensi().getGenre.forEach((element) {widget.add(Text(element));});
    return widget;
  }
}