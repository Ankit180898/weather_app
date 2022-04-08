import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/AppBody.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Weather App"
        ),
      ),
      body:AppBody() ,
    );
}
}