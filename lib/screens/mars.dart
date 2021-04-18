import 'package:flutter/material.dart';

class Marsw extends StatefulWidget {
  //marsw({Key key}) : super(key: key);

  @override
  _MarswState createState() => _MarswState();
}

class _MarswState extends State<Marsw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Phobos Forcast",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.cloud_circle_outlined)
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container()
          ],
        ),
      )),
    );
  }
}
