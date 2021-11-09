

import 'package:bioskop_app/pages/genre.dart';
import 'package:bioskop_app/pages/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class loginPage extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset(
                'assets/logo.png',
              height: 100,
              alignment: Alignment.topLeft,
            ),
            padding: EdgeInsets.only(
              top: 30,
              bottom: 50,
              left: 30
            ),
          ),
          Container(
            child: Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.left,
            ),
            padding: EdgeInsets.only(left: 20),
          ),
          Container(
            child: Text(
              'Explorer !',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.left,
            ),
            padding: EdgeInsets.only(left: 20),
          ),
          Form(
            key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    child: TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Email Address',
                        icon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Nama tidak boleh kosong';
                        }
                        if(!value.contains("@")){
                          return 'Tidak terdapat @';
                        }
                        if(value.length > 50){
                          return 'Name is so long, max 50 characters';
                        }
                      },
                    ),
                    padding: EdgeInsets.only(
                      top: 50,
                      left: 20,
                      right: 20,
                      bottom: 10
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Masukkan Password',
                        icon: Icon(Icons.admin_panel_settings_sharp),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Nama tidak boleh kosong';
                        }
                        if(value.length < 8){
                          return 'Password must be atleast 8 characters long';
                        }
                      },
                    ),
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 20,
                      right: 20
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 30
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context){
                                    return genrePage();
                                  }
                              )
                          );
                          /*
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Login')),
                          );
                           */
                        }
                      },
                      child: Icon(Icons.arrow_forward_sharp,color:Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        primary: Colors.deepPurple,
                        onPrimary: Colors.purple
                      ),
                    ),
                  )
                ],
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 20,
                ),
                child: Text(
                  'Start Fresh Now',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context){
                            return registerPage();
                          }
                      )
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(
                      top: 30,
                    left: 5
                  ),
                  child:Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.purple
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}