import 'package:flutter/material.dart';
import '../models/sensor_data_model.dart';

class SensorCard extends StatelessWidget {
  final SensorData sensorData;

  SensorCard({required this.sensorData});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Humedad del Suelo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Humedad: ${sensorData.humidity.toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Luminosidad',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Luz: ${sensorData.light.toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
