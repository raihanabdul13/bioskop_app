
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Selectablebox extends StatelessWidget{
final bool isSelected;
final double width;
final double height;
final String text;
final Function? onTap;

Selectablebox(this.text,
{
this.isSelected = false,
this.width=144,
this.height=60,
this.onTap
}
);

@override
Widget build(BuildContext context) {
return GestureDetector(
onTap: (){
if(onTap != null){
onTap!();
}
},
child: Container(
width: width,
height: height,
child: Center(
child: Text(text),
),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
border: Border.all(
color: Colors.black
),
color: (!isSelected) ? Colors.transparent: Colors.yellow
),
),
);
}
}