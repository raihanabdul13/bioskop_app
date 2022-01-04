
import 'package:bioskop_app/Model/User.dart';
import 'package:bioskop_app/pages/genre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PressLogin extends StatelessWidget{
  final User user;
  PressLogin({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(user.name),
            Text(user.email),
            Text(user.password),
            FloatingActionButton(
                child: Icon(Icons.arrow_forward_sharp),
                backgroundColor: Colors.purple,
                elevation: 0,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>genrePage())
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}