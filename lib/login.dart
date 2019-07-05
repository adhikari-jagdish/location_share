import 'package:flutter/material.dart';
import 'home.dart';
import 'utils/Constants.dart';

class Login extends StatelessWidget {
  //instantiate an instance of TextEditingController here, which has a main responsibility of handling all text editing logic.
  final _textController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final logo = Container(width: 70.0, height: 70.0, child: applogo);

    final username = TextFormField(
      controller: _textController,
      keyboardType: TextInputType.text,
      maxLength: 50,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
          hintText: txtusername,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          hintStyle: TextStyle(color: Colors.black)),
      style: TextStyle(color: Colors.black),
    );

    final password = TextFormField(
      controller: _textController,
      keyboardType: TextInputType.text,
      obscureText: true,
      maxLength: 50,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
          hintText: txtPassword,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          hintStyle: TextStyle(color: Colors.black)),
      style: TextStyle(color: Colors.black),
    );

    final loginbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
        },
        padding: EdgeInsets.all(12.0),
        child: Text(
          loginButtonText,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );



    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Login'),
          ),
          body: Center(
            child: Card(
              elevation: 3.0,
              color: Colors.white,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(10.0),
                children: <Widget>[
                  logo,
                  SizedBox(
                    height: heightTwenty,
                  ),
                  username,
                  SizedBox(
                    height: heightTwenty,
                  ),
                  password,
                SizedBox(
                height: heightTwenty,
              ),
                  loginbutton
                ],
              ),
            ),
          )),
    );
  }
}
