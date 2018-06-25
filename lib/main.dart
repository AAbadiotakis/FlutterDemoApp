import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.red,
      ),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Demo AppBar'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            new PopupMenuButton(itemBuilder: (BuildContext context) {

            })
          ]
        ),
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Theme(
              data: new ThemeData(
                inputDecorationTheme: new InputDecorationTheme(
                  labelStyle: new TextStyle(
                    color: Colors.black38, fontSize: 15.0
                  )
                )
              ),
              isMaterialAppTheme: true,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlutterLogo(

                  ),
                  new Container(
                    child: new Form(
                      autovalidate: true,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Username",
                              fillColor: Colors.white
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                              fillColor: Colors.white
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.text,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 60.0)
                          ),
                          new MaterialButton(
                            color: Colors.red,
                            onPressed: () {},
                            textColor: Colors.white,
                            child: new Text("Log In")
                          )
                        ],
                      )
                    )
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
