import 'package:brew_crew/screens/authenticate.dart';
import 'package:brew_crew/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/models/user.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    //print(user);
    if(user==null)
      return Authenticate();
    else
      return Home();
  }
}
