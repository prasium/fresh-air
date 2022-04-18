import 'package:flutter/material.dart';

class AQCard extends StatelessWidget {
  final temp, humid, pm25;
  const AQCard({Key? key, this.temp, this.humid, this.pm25}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 300,
        child: Card(
          child: ListTile(
            title: Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(temp + ' Degree Celsius '),
                        SizedBox(height: 10),
                        Text(humid + '% RH '),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 60,
                  bottom: 10,
                  child: Card(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      height: 160,
                      width: 160,
                      child: Center(
                        child: ListTile(
                          title: Text(pm25 + " ug/m^3 "),
                        ),
                      ),
                    ),
                    elevation: 8,
                    shadowColor: Colors.green,
                    margin: EdgeInsets.all(20),
                    shape: CircleBorder(side: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                ),
              ] ,
            ),
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: EdgeInsets.all(20),
          shape:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)
          ),
        )
    );
  }
}
