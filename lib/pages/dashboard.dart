import 'package:bioskop_app/Model/preferensi.dart';
import 'package:flutter/material.dart';
import '../Model/preferensi.dart';
import '../Model/mmovies.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';
import 'nextpage.dart';
import 'topup.dart';
import 'tiket.dart';


class Movies extends StatefulWidget{
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _movies();
  }
}

class _movies extends State<Movies>{
  List<Mmovies> nowPlayingMovies = [];
  String base_url = 'http://192.168.0.2/img/';
  bool loading = true;
  List<Widget> imageSliders = [];

  List<Mmovies> browseMovies = [];
  bool loadingBrowse = true;
  List<Widget> imageSlidersBrowse = [];

  List<Mmovies> csMovies = [];
  bool loadingCS = true;
  List<Widget> imageSlidersCS = [];

  Future<void> fetchNowPlaying() async {
    setState((){
      loading = true;
    });

    final response = await http
        .get(Uri.parse('http://192.168.0.2/api/moviesnowplaying'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState((){
        for(int i=0;i<data.length;i++){
          if(data[i]!=null){
            Map<String,dynamic> map=data[i];
            nowPlayingMovies.add(Mmovies.fromJson(map));
          }
        }
        // print(imgList);
        imageSliders = nowPlayingMovies
            .map((item) => GestureDetector(
          onTap: (){
            Preferensi().setMoviesID = item.id;
            Preferensi().setMoviesStatus = item.status;
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nextpage()));
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(base_url+item.file_name, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          item.nama,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
        )
        )
            .toList();
      });
      loading = false;

    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<void> fetchBrowse() async {
    setState((){
      loadingBrowse = true;
    });

    final response = await http
        .get(Uri.parse('http://192.168.0.2/api/moviesbrowse'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState((){
        for(int i=0;i<data.length;i++){
          if(data[i]!=null){
            Map<String,dynamic> map=data[i];
            browseMovies.add(Mmovies.fromJson(map));
          }
        }
        // print(imgList);
        imageSlidersBrowse = browseMovies
            .map((item) => GestureDetector(
          onTap: (){
            Preferensi().setMoviesID = item.id;
            Preferensi().setMoviesStatus = item.status;
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nextpage()));
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(base_url+item.file_name, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          item.nama,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
            .toList();
      });
      loadingBrowse = false;

    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<void> fetchCS() async {
    setState((){
      loadingCS = true;
    });

    final response = await http
        .get(Uri.parse('http://192.168.0.2/api/moviescomingsoon'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState((){
        for(int i=0;i<data.length;i++){
          if(data[i]!=null){
            Map<String,dynamic> map=data[i];
            csMovies.add(Mmovies.fromJson(map));
          }
        }
        // print(imgList);
        imageSlidersCS = csMovies
            .map((item) => GestureDetector(
          onTap: (){
            Preferensi().setMoviesID = item.id;
            Preferensi().setMoviesStatus = item.status;
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nextpage()));
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(base_url+item.file_name, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          item.nama,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
            .toList();
      });
      loadingCS = false;

    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchNowPlaying();
    fetchBrowse();
    fetchCS();
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Now Playing",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
            ),
            (loading == false) ? setMoviesNP(): CircularProgressIndicator(),
            Container(
              padding: EdgeInsets.all(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Browse",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
            ),
            (loadingBrowse == false) ? setMoviesBrowse(): CircularProgressIndicator(),
            Container(
              padding: EdgeInsets.all(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Coming Soon",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
            ),
            (loadingCS == false) ? setMoviesCS(): CircularProgressIndicator(),

            // Center(
            //   child: ,
            // )


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_balance_wallet_outlined),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Topup()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.airplay,
                      color: Colors.blue,
                    ),
                    Text(
                        'New Movies',
                        style: TextStyle(color: Colors.blue)
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tiket()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.airplane_ticket,
                      color: Colors.grey,
                    ),
                    Text(
                        'My Tickets',
                        style: TextStyle(color: Colors.grey)
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }

  Widget setMoviesNP(){
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
    );
  }

  Widget setMoviesBrowse(){
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSlidersBrowse,
      ),
    );
  }

  Widget setMoviesCS(){
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSlidersCS,
      ),
    );
  }


}