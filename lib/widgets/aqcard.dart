import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class AQCard extends StatelessWidget {
  final temp, humid, pm25;

  const AQCard({Key? key, this.temp, this.humid, this.pm25}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.indigo,
                  elevation: 3,
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "PM2.5 Concentration",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Card(
                          color: double.parse(pm25) < 90.0
                              ? (double.parse(pm25) < 60.0
                                  ? (double.parse(pm25) < 30.0
                                      ? Color(0xFF00FF00)
                                      : Color(0xFFB6D7A8))
                                  : Color(0xFFFFD966))
                              : (double.parse(pm25) < 250.0
                                  ? (double.parse(pm25) < 120.0
                                      ? Color(0xFFE69138)
                                      : Color(0xFFE06666))
                                  : Color(0xFFFF0000)),
                          child: Center(
                            child: Text(
                              pm25 + "\nug/m^3",textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                            ),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 80),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.indigo, width: 1),
                            borderRadius: BorderRadius.circular(150),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.indigo,
                  elevation: 3,
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Meteorological Factors",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(
                          width: size.width,
                          child: Card(
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    WeatherIcons.thermometer,
                                    color: Color(0xFF4B4FBE),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    temp + " \u2103 ",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ],
                              ),
                            ),
                            elevation: 5,
                            shadowColor: Colors.white38,
                            margin: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 30),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: size.width,
                          child: Card(
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    WeatherIcons.humidity,
                                    color: Color(0xFF4B4FBE),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    humid + " %RH ",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ],
                              ),
                            ),
                            elevation: 5,
                            shadowColor: Colors.white38,
                            margin: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 30),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
