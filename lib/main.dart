import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: Color(0xff574b90),
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    Widget loginBtn = MaterialButton(
      onPressed: (){},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80.0)
      ),
      color: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 80.0),
        child: Text('Login',
        style: TextStyle(
          color: Colors.white
        ),),
      ),
    ) ;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Theme.of(context).primaryColor, Colors.deepPurpleAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 28.0,
                  ),
                  //Title
                  Center(
                    child: Text(
                      "Log in to store",
                      style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                   SizedBox(
                    height: 30.0,
                  ),
                   Text(
                    "Store address",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'yourstore.example.com',
                      border: OutlineInputBorder()
                    ),
                  ),
                   SizedBox(
                    height: 20.0,
                  ), 
                  //Email 
                   Text(
                    "Email address",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'email@example.com',
                      border: OutlineInputBorder()
                    ),
                  ),
                   SizedBox(
                    height: 20.0,
                  ),
                  //password
                   Text(
                    "Password",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      border: OutlineInputBorder()
                    ),
                  ),
                   SizedBox(
                    height: 25.0,
                  ),
                  Center(child: loginBtn),
                  SizedBox(
                    height: 28.0,
                  ),
                  Center(
                    child: GestureDetector(
                      child: Text('Create new store ?',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
