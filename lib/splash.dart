import 'package:flutter/material.dart';
import 'login.dart';
import 'utils/Constants.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  //Splash screen icon
  final logo = Container(
    width: 50.0,
    height: 50.0,
    child: applogo
  );

  //Splash Screen Text
  final appname = Center(
    child: Text(
      "Location Finder",
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.blue,
      ),
    ),
  );

  //ProgressBar
  static const progress = Center(
    child: CircularProgressIndicator(),
  );


  //Code for delay and move to next screen
  @override
  void initState() {
    super.initState();

    // Initialize data, then navigator to Home screen.
    initData().then((value){
      navigateToLogin();
    });
  }


  // Navigate to Login screen.
  void navigateToLogin(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
  }

  //Delay for 3 seconds
  Future initData() async{
    await Future.delayed(Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              logo,
              SizedBox(
                height: 10.0,
              ),
              appname,
              SizedBox(
                height: 10.0,
              ),
              progress,
            ],
          ),
        ),
      ),
    );
  }
}
