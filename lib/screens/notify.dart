import 'package:flutter/material.dart';
import 'package:skybuildz/screens/homeScreen.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Color(0xFF4F51C0),
          title: Text('Notifications'),
          actions: <widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage(''),
              ),
              Text(
                'No notifacation yet!',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 40.0, right: 40.0, top: 10.0, bottom: 60.0),
                  child: FlatButton(
                    color: Color(0xFF4F51C0),
                    child: Text(
                      'Order now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
