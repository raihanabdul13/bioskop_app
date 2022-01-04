import 'package:flutter/material.dart';
import '../model/preferensi.dart';
import 'topup.dart';
import 'dashboard.dart';

class Tiket extends StatefulWidget{
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _tiket();
  }
}

class _tiket extends State<Tiket>{
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context){
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tiket'),
            bottom: const TabBar(
                tabs:[
                  Tab(text: 'Newest'),
                  Tab(text: 'Oldest'),
                ]
              ),
            ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_bike),
            ],
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
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Movies()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.airplay,
                          color: Colors.grey,
                        ),
                        Text(
                            'New Movies',
                            style: TextStyle(color: Colors.grey)
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 60,
                    onPressed: (){

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.airplane_ticket,
                          color: Colors.blue,
                        ),
                        Text(
                            'My Tickets',
                            style: TextStyle(color: Colors.blue)
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}