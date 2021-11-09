import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class genrePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = 75;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              title: Text('ini Genre'),
              iconTheme: IconThemeData(
                color: Colors.black
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: ListView(
              children:<Widget>[
                Container(
                  margin:EdgeInsets.only(top: 10,left: 20),
                  child: Text(
                      'Please Select',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,bottom: 20),
                  child: Text(
                      'Your Favorit Genre',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                GridView.count(
                  primary: false,
                  shrinkWrap: true,
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 20,
                        right: 10
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Horor',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 10,
                          right: 20
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Action'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 20,
                          right: 10
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Echii'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 10,
                          right: 20
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Fantasy'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 20,
                          right: 10
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Adventure'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 10,
                          right: 20
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Harem'),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:EdgeInsets.only(top: 20,left: 20),
                  child: Text(
                    'Movie Language',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,bottom: 20),
                  child: Text(
                    'Your Prefere',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                GridView.count(
                  primary: false,
                  shrinkWrap: true,
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 20,
                          right: 10
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Indonesia'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 10,
                          right: 20
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Chinna'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 20,
                          right: 10
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Jappanes'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 10,
                          right: 20
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('English'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: const Icon(Icons.arrow_forward_sharp),
              backgroundColor: Colors.purple,
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              elevation: 0.0,
              child: Container(height: 50,),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          )
        ],
      ),
    );
  }
}