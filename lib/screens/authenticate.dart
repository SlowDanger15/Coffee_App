import 'package:brew_crew/screens/register.dart';
import 'package:brew_crew/screens/sign_in.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn=true;
  void toggeView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn)
      return SignIn(toggleView: toggeView);
    else {
      return Register(toggleView: toggeView);
    }
  }
}
