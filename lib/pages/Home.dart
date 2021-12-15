import 'package:bioskop_app/Model/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Model/Preferensi.dart';
class Home extends StatelessWidget{
  final Preferensi preferensi;
  final User user;
  Home ({required this.preferensi,required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ini Home'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('User login saat ini : '+ user.email.toString() + '\n'),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'genre yang dipilih yaitu : \n '+ preferensi.genre.toString() + '\n \n dan \n \n bahasa yang dipilih : \n' + preferensi.language.toString(),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )
    );
  }
  void genreSelected(List Genre){
    var genre = Genre.map((e) => e);
    print(genre);
  }
}