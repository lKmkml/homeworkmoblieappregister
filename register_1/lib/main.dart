import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cnfpassword = TextEditingController();
  TextEditingController mobile = TextEditingController();

  @override
  void initState() {
    username.text = ""; //innitail value of text field
    email.text = "";
    password.text = "";
    cnfpassword.text = "";
    mobile.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REGISTER"),
          backgroundColor: Colors.black38,
        ),
        body: Container(
          color: Colors.grey,
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Image.asset(
                "assets/images/img1.jpg",
                height: 160,
              ),
              SizedBox(height: 10),
              TextField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.person),
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
              Container(height: 10),
              TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.email),
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
              Container(height: 10),
              TextField(
                  controller: password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.lock),
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
              Container(height: 10),
              TextField(
                  controller: cnfpassword,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.lock),
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
              Container(height: 10),
              TextField(
                  controller: mobile,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: "Mobile",
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
              Container(
                padding: const EdgeInsets.all(10.30),
                child: TextButton(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.black26,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Already have an Account ?",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderSide: BorderSide(
      color: Colors.black45,
      width: 30,
    ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.black45,
          width: 3,
        ));
  }
  //create a function like this so that you can use it wherever you want
}
