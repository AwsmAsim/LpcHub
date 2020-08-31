import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class Authentication{
  var _auth = FirebaseAuth.instance;

  void signIn(String email,String password, BuildContext context) async{
    var user =  await _auth.signInWithEmailAndPassword(email: email, password: password)
    .catchError((err){
      if(err.code=='INVALID-PASSWORD'){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: new Text("Invalid email or password"),
              content: new Text("Please check email and password"),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    })
    ;
  }

  Future signUp(String email,String password,String name, BuildContext context) async{
    //email And password are for Authentication.
    //name of the user is stored in the database.
    //email, password and user are all stored in signInDetails directoy for further use in UI if needed.
    //context is used so that we can display error message.

    var signUpStatus = await _auth.createUserWithEmailAndPassword(email: email, password: password)
    .catchError((err) {
      if (err.code == 'ERROR_INVALID_EMAIL') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: new Text("In-valid Email"),
              content: new Text("Please enter valid email."),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
      else if(err.code=='ERROR_EMAIL_ALREADY_IN_USE'){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: new Text("Email Already Used"),
              content: new Text("Please enter another email."),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );

      }
      else if(err.code=='ERROR_TOO_MANY_REQUESTS'){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: new Text("Too many requests"),
              content: new Text("Please try after some time."),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
      }
      )
    ;

    print(name);
  }
}