import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_animations/simple_animations.dart';

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
      gradient: LinearGradient(
        tileMode: TileMode.mirror,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfff44336),
          Color(0xfffac07a),
        ],
        stops: [
          0.06,
          0.81,
        ],
      ),
      backgroundBlendMode: BlendMode.exclusion,
    ),
    child: PlasmaRenderer(
      type: PlasmaType.bubbles,
      particles: 9,
      color: Color(0x44b59d94),
      blur: 0.7,
      size: 0.97,
      speed: 4.08,
      offset: 0,
      blendMode: BlendMode.plus,
      particleType: ParticleType.atlas,
      variation1: 0.56,
      variation2: 0.21,
      variation3: 0.78,
      rotation: 1.36,
      fps: 40,
      child: Text(
        "Weather on Mars \n 120 degrees F",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.getFont('Raleway',
            color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30),
      ),
    ),
  );
}

Future<void> fetchWeather() async {
  await http.get(Uri.parse('https://api.nasa.gov/insight_weather/?api_key=hneSVQ0R1zLCEF3zpWzCecc8L9cFMzvtB8WPM7b6&feedtype=json&ver=1.0'))
      .then((response) async => print(await response));
}

class _MarswState extends State<Marsw> {
  @override

  Widget build(BuildContext context) {
    fetchWeather();
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
                  "Phobos Forecast",
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
