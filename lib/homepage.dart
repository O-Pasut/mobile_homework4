import 'package:flutter/material.dart';
import 'package:mobile_homework4/traffic_light.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Traffic Light"))),
      body: Center(child: TrafficLight()),
    );
  }
}
