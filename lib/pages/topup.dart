import 'package:flutter/material.dart';
import '../model/preferensi.dart';

class Topup extends StatefulWidget{
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _topup();
  }
}

class _topup extends State<Topup>{
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Up'),
      ),
    );
  }
}