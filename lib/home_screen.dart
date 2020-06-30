import 'package:flutter/material.dart';
import 'package:social_media_app/first_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool Value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Image.asset(
              'images/Business_Man_Nodes_Connection_Links_Social-512.png',
              height: 100,
              width: 100,
              color: Colors.blueAccent,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                      20,
                    )),
                    hintText: 'e.g..Ahmad Ali',
                    labelText: 'Your Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 30, right: 30, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                      20,
                    )),
                    hintText: 'e.g..Ahmad Ali@gmail.com',
                    labelText: 'Your Email Address'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.blueAccent,
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstScreen()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  onChanged: (ch) {
                    setState(() {
                      Value = ch;
                    });
                  },
                  value: Value,
                  activeColor: Colors.blueAccent,
                ),
                Text(
                  'Remember Me',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
              0.1,
              0.4,
              0.6,
              0.9
            ],
                colors: [
              Colors.yellow,
              Colors.red,
              Colors.indigo,
              Colors.teal
            ])),
      ),
    );
  }
}
