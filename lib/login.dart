import 'dashboard.dart';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final FirebaseAuth _auth = FirebaseAuth.instance;
    final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

    String _email, _password;

    checkAuthentification() async {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user == null) {
          print('User is currently signed out!');
        } else {
          print('User is signed in!');
        }
      });

      // @override
      // void initState() {
      //   super.initState();
      //   this.checkAuthentification();
      // }
    }

    final buttonLogin = Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        width: size.width * 0.6,
        child: ButtonTheme(
          height: 56,
          child: RaisedButton(
            child: Text('Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                )),
            color: Colors.black87,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Dashboard())),
            },
          ),
        ),
      ),
    );

    final buttonForgotPassword = FlatButton(
        child: Text(
          'Forgot Password',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        onPressed: null);

    final contactUs = SizedBox(
      child: Text('Contact Help Center',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
              fontWeight: FontWeight.w900,
              decoration: TextDecoration.underline)),
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Digital Memo"),
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/newlogo.jpeg'),
              new Form(
                  child: new Theme(
                      data: new ThemeData(
                          primarySwatch: Colors.teal,
                          inputDecorationTheme: new InputDecorationTheme(
                              labelStyle: new TextStyle(
                                  color: Colors.black87, fontSize: 60.0))),
                      child: new Container(
                        width: size.width * 1.2,
                        padding: const EdgeInsets.all(20),
                        child: new Column(
                          children: <Widget>[
                            new TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Enter Email",
                              ),
                              onSaved: (input) => _email = input!,
                            ),
                            new TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Enter Password",
                              ),
                              obscureText: true,
                              onSaved: (input) => _password = input!,
                            ),
                            buttonLogin,
                            SizedBox(height: 20.0),
                            SignInButton(
                              Buttons.Google,
                              text: "Sign up with Google",
                              onPressed: () {},
                            ),
                            buttonForgotPassword,
                            contactUs
                          ],
                        ),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
