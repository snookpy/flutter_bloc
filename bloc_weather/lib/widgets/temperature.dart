import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  final double temperature;
  final double low;
  final double high;

  Temperature({this.temperature, this.high, this.low});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Text(
            '${_formattedTemperature(temperature)}',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        Column(
          children: <Widget>[
            Text(
              'max: ${_formattedTemperature(high)}',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Colors.white),
            ),
            Text(
              'min: ${_formattedTemperature(high)}',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }

  int _formattedTemperature(double t) => t.round();
}
