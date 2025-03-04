import 'package:flutter/material.dart';

class TrafficLight extends StatefulWidget {
  const TrafficLight({super.key});
  @override
  State<TrafficLight> createState() => _TrafficLightState();
}

class _TrafficLightState extends State<TrafficLight> {
  int _lightState = 0;

  void _changeLightState() {
    setState(() {
      _lightState++;
    });
    if (_lightState == 3) {
      _lightState = 0;
    }
  }

  Widget _getLight(Color c, int state) {
    return AnimatedOpacity(
      opacity: _lightState == state ? 0.9 : 0.3,
      duration: const Duration(milliseconds: 500),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(color: c, offset: Offset(0, 0), blurRadius: 30),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _getLight(Colors.red, 0),
                SizedBox(height: 30),
                _getLight(Colors.yellow, 1),
                SizedBox(height: 30),
                _getLight(Colors.green, 2),
              ],
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () => _changeLightState(),
            child: const Text("Change Color"),
          ),
        ],
      ),
    );
  }
}
