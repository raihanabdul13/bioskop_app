import 'dart:core';

import 'package:bioskop_app/pages/Home.dart';
import 'package:flutter/material.dart';
import '../Model/Preferensi.dart';
import '../Model/User.dart';
import '../Widget/Selectablebox.dart';

import 'package:flutter/cupertino.dart';

class genrePage extends StatefulWidget{
  final User user;
  genrePage({required this.user});
  List<String> titleGenre = [
    "Action",
    "Fantasy",
    "Adventure",
    "Horror",
    "romance",
    "Isekai",
  ];
  final List <String> titleBahasa = [
    "indonesia",
    "English",
    "Jawa",
    "Japan",
  ];
  _genreState createState()=> _genreState(UserLogin: user);
}

class _genreState extends State<genrePage>{
  final User UserLogin;
  _genreState({required this.UserLogin});
  List<String> selectedGenre = [];
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                        Icons.arrow_back
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 160,
                    child: Text(
                      'Select Your Four Favourite Genre',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: genereteBoxGenre(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20,top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 160,
                    child: Text(
                      'Movie Language You Prefer ?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: GenereteBoxLanguage(),
                ),
              ),
              FloatingActionButton(
                  child: Icon(
                      Icons.arrow_forward_sharp
                  ),
                  backgroundColor: Colors.purple,
                  elevation: 0,
                  onPressed: () {
                    if(selectedGenre.length < 4){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please Select 4 minimum Genre')),
                      );
                    }
                    else {
                      Preferensi pref = Preferensi(
                          genre: selectedGenre,
                          language: selectedLanguage
                      );
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home(preferensi: pref,user: UserLogin,)));
                    }
                  }
              )
            ],
          ),
        )

      ),
    );
  }
  List<Widget> GenereteBoxLanguage(){
    double mywidth = (MediaQuery.of(context).size.width - 60) / 2;

    return widget.titleBahasa.map(
        (lang) => Selectablebox(
          lang, width: mywidth,
          isSelected: selectedLanguage == lang,
          onTap: (){
            onSelectLanguage(lang);
          },
        )
    ).toList();
  }
   void onSelectLanguage(String lang){
    setState(() {
      selectedLanguage = lang;
    });
   }

   List<Widget> genereteBoxGenre(){
     double mywidth = (MediaQuery.of(context).size.width - 60) / 2;
     return widget.titleGenre.map(
             (genre) => Selectablebox(
               genre,
               width: mywidth,
               isSelected: selectedGenre.contains(genre),
               onTap: (){
                 onSelectGenre(genre);
               },
             )
     ).toList();
   }
   void onSelectGenre(String genre){
    if ( selectedGenre.contains(genre)){
      setState(() {
        selectedGenre.remove(genre);
      });
    } else {
      if (selectedGenre.length < 4){
        setState(() {
          selectedGenre.add(genre);
        });
      }
    }
   }
}