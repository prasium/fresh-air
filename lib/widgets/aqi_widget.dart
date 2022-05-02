import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fresh_air/widgets/aqcard.dart';
import 'package:http/http.dart' as http;

import '../utils/AQClass.dart';

class AQIWidget extends StatefulWidget {
  const AQIWidget({Key? key}) : super(key: key);
  static const url = 'https://api.thingspeak.com/channels/1632034/feeds.json?api_key=DX4UGZI5JF222M7O&results=1';

  @override
  State<AQIWidget> createState() => _AQIWidgetState();
}

class _AQIWidgetState extends State<AQIWidget> {
  late Future<AQ> futureAQ;


  Future<AQ> fetchAQ() async
  {
    final resp = await http.get(Uri.parse(AQIWidget.url));
    if(resp.statusCode==200){
      final decoded = jsonDecode(resp.body);
      final List<dynamic> data = decoded['feeds'] as List<dynamic>;
      print(data[0]);
      return AQ.fromJson(data[0]);
    }else{
      throw Exception('Failed to load');
    }
  }
@override
  void initState() {
    super.initState();
    futureAQ = fetchAQ();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<AQ>(
        future: fetchAQ(),
        builder: (ctx, snapShot){
          if (snapShot.hasData) {
            String val = checkRange(double.parse(snapShot.data!.pm25));
            return AQCard(
              humid: snapShot.data!.humidity,
              pm25: snapShot.data!.pm25,
              temp: snapShot.data!.temperature,
              range: val,
            );
          } else if (snapShot.hasError) {
            return Text('${snapShot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }

  String checkRange(double pm25) {
    if(pm25<30)
      {
        return 'Good';
      }
    else if(pm25>=30 && pm25<60)
      {
        return 'Satisfactory';
      }

    else if(pm25>=60 && pm25<90)
    {
      return 'Moderate';
    }

    else if(pm25>=90 && pm25<120)
    {
      return 'Poor';
    }

    else if(pm25>=120 && pm25<250)
    {
      return 'Very Poor';
    }

    else if(pm25>=250)
    {
      return 'Severe';
    }
    return '';
  }
}
