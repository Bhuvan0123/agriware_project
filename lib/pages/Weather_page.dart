import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Weatherpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Today\'s Temperature: ',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '28°C',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Weather :',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Cloudy',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Lottie.asset(
            'lib/assets/lottie/cloudy.json',
            width: 200,
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tomorrow\'s Temperature: ',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '30°C',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
