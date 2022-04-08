import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/weather_services.dart';

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  late Future<Weather> futureWeather;
  @override
  void initState() {
    syncWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Weather info:",
          style: TextStyle(fontSize: 16 ),),
          FutureBuilder<Weather>(
              future: futureWeather,
              builder: (context,snapshot){
                if(snapshot.hasData)
                  return Text('${snapshot.data?.areaName}' + ' ${snapshot.data?.temperature}');
            return CircularProgressIndicator();
          }),
          MaterialButton(
            color: Colors.lightBlueAccent,
            child: Text(
              "Sync",
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              syncWeather();
            },
          )
        ],
      ),
    );
  }

    void syncWeather()  {
    futureWeather= WeatherService.getWeathervalues();

  }
}
