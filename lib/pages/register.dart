
import 'package:bioskop_app/pages/genre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registerPage extends StatelessWidget{
final _formKey = GlobalKey<FormState>();
var confirmPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.black
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: ListView(

              children: <Widget>[
                Column(
                  children: <Widget> [
                    Container(
                      child: Text(
                          "CREATE NEW ACCOUNT",
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      child :CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/user.png',
                          height: 200,
                          color: Colors.deepPurple,
                        ),
                        radius: 75,
                      )
                    ),
                    Form(
                      key: _formKey,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  autofocus: true,
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                      labelText: 'Nama',
                                      hintText: 'Masukkan Nama',
                                      icon: Icon(Icons.person),
                                      border: OutlineInputBorder()
                                  ),
                                  validator: (value){
                                    if(value == null || value.isEmpty){
                                      return 'Nama tidak boleh kosong';
                                    }
                                    if(value.length > 100){
                                      return 'Name is so long, max 50 characters';
                                    }
                                    return null;
                                  },
                                ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Masukkan Email',
                                    icon: Icon(Icons.email),
                                    border: OutlineInputBorder()
                                ),
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return 'Email tidak boleh kosong';
                                  }
                                  if(!value.contains("@")){
                                    return 'Tidak terdapat @';
                                  }
                                  if(value.length > 50){
                                    return 'Email is so long, max 50 characters';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Masukkan password',
                                    icon: Icon(Icons.admin_panel_settings_sharp),
                                    border: OutlineInputBorder()
                                ),
                                validator: (value){ //validasi input
                                  confirmPass = value;
                                  if(value == null || value.isEmpty){
                                    return 'Password tidak boleh kosong';
                                  }
                                  if(value.length < 8){
                                    return 'Password must be atleast 8 characters long';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    labelText: 'Confirm Password',
                                    hintText: 'Re-Enter Password',
                                    icon: Icon(Icons.compass_calibration),
                                    border: OutlineInputBorder()
                                ),
                                validator: (value){
                                  if(value == null || value.isEmpty) {
                                    return 'Confirm Password tidak boleh kosong';
                                  }
                                  if(value.length < 8){
                                    return 'Password must be atleast 8 characters long';
                                  }
                                  if(value != confirmPass ){
                                    return 'Password must be same as above';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                onPressed: (){
                                  if (_formKey.currentState!.validate()) {
                                    // If the form is valid, display a snackbar. In the real world,
                                    // you'd often call a server or save the information in a database.
                                    /*
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Processing Data Register')),
                                    );
                                     */
                                    Navigator.pop(context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context){
                                              return genrePage();
                                            }
                                        )
                                    );
                                  }
                                },
                                child: Icon(Icons.arrow_forward_sharp, color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  primary: Colors.deepPurple,
                                  onPrimary: Colors.purple,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}