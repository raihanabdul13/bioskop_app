import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/selectablebox.dart';
import '../model/user.dart';
import 'dashboard.dart';
import '../Model/preferensi.dart';

class genrePage extends StatefulWidget{
  final List<String> genres = [
    "Horror",
    "Music",
    "Action",
    "Drama",
    "War",
    "Crime"
  ];
  final List<String> languages = ["Bahasa", "English", "Japanese", "Korean"];

  genreState createState() => genreState();
}

class genreState extends State<genrePage>{
  User? user;

  List<String> selectedGenre =[];
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(top: 50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back,
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
                      'Hi '+Preferensi().getNama+' Select Your Four Favourite Genres',
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
                  children: generateBoxGener(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 160,
                    child: Text(
                      'Movie Language You Prefer?',
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
                  children: generateBoxLanguage(),
                ),
              ),
              FloatingActionButton(
                child: Icon(Icons.arrow_forward),
                backgroundColor: Colors.purple,
                elevation: 0,
                onPressed: (){
                  Preferensi().setGenre=selectedGenre;
                  Preferensi().setLanguage=selectedLanguage;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Movies()));
                },
              )
            ],
          ),
        )

    );
  }

  List<Widget> generateBoxLanguage(){
    double mywidth =
        (MediaQuery.of(context).size.width - 60 ) / 2;

    return widget.languages.map(
            (lang) => Selectablebox(
          lang,
          width: mywidth,
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

  List<Widget> generateBoxGener(){
    double mywidth =
        (MediaQuery.of(context).size.width - 60 ) / 2;

    return widget.genres.map(
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

  void onSelectGenre(String genre) {
    if (selectedGenre.contains(genre)) {
      setState(() {
        selectedGenre.remove(genre);
      });
    } else {
      if (selectedGenre.length < 4) {
        setState(() {
          selectedGenre.add(genre);
        });
      }
    }
  }


}