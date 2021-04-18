import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Marsw extends StatefulWidget {
  //marsw({Key key}) : super(key: key);

  @override
  _MarswState createState() => _MarswState();
}

_marsweather(BuildContext) {
  return Container(
    width: 420,
    height: 380,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.orange.shade900,
    ),
    child: Text(
      "Weather on Mars \n 120 degrees F",
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont('Raleway',
          color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30),
    ),
  );
}

class _MarswState extends State<Marsw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
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
            Row(
              children: <Widget>[_marsweather(context)],
            )
          ],
        ),
      )),
    );
  }
}
