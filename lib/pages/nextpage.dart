import 'package:flutter/material.dart';
import '../model/user.dart';
import '../Model/preferensi.dart';

class Nextpage extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(100),
          ),
          Text(Preferensi().getMoviesID.toString()),
          Text(Preferensi().getMoviesStatus.toString()),
        ],
      ),
    );
  }
}