// import 'dart:async';
// import 'dart:html';
import 'package:flutter/material.dart';
// import 'package:barcode_scan/barcode_scan.dart';

void main() => runApp(new MaterialApp(
      home: LoginPage(),
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          accentColor: Colors.teal),
    ));

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonScan = Padding(
      padding: EdgeInsets.only(top: 1),
      child: Container(
        // width: size.width * 0.6,
        child: ButtonTheme(
          height: 20,
          child: RaisedButton(
            child: Text('Scan Here',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            color: Colors.black87,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => QrPage())),
            },
          ),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Digital Memo"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 35.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Welcome to E-Challan App",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox(
                      height: 180.0,
                      width: 180.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/contact.png',
                                width: 64.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Information",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180.0,
                      width: 180.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/scan.png',
                                width: 64.0,
                              ),
                              SizedBox(
                                height: 22.0,
                              ),
                              // Text(
                              //   "Scan Here",
                              //   style: TextStyle(
                              //       color: Colors.black,
                              //       fontWeight: FontWeight.bold,
                              //       fontSize: 18.0),
                              // ),
                              buttonScan,
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180.0,
                      width: 180.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/ambulance.png',
                                width: 64.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Emergency",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180.0,
                      width: 180.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/history.png',
                                width: 64.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "History",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180.0,
                      width: 180.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/calander.png',
                                width: 64.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Calander",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180.0,
                      width: 180.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/contact.png',
                                width: 64.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Contact Us",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                              keyboardType: TextInputType.emailAddress,
                            ),
                            new TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Enter Password",
                              ),
                              keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                            ),
                            buttonLogin,
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

class QrPage extends StatefulWidget {
  @override
  _QrPageState createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  String result = "Scan Here!";

  // Future _scanQR() async{
  //   try{
  //     String qrResult = await BarcodeScanner.scan();
  //     setState(() {
  //       result = qrResult;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scanner"),
      ),
      body: Center(
        child: Text(
          result,
          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.camera_alt), onPressed: () {}, label: Text("Scan")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
