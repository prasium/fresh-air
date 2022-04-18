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
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Card(
                          child: Center(
                              child: Text(
                            pm25 + " ug/m^3 ",
                            style: TextStyle(fontSize: 20),
                          ),),
                          elevation: 5,
                          shadowColor: Colors.white38,
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 80),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white, width: 1),
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
                            fontSize: 20,
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
                                    style: TextStyle(fontSize: 20),
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
                                    style: TextStyle(fontSize: 20),
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
