// import 'package:flutter/material.dart';
// import '../constants.dart';

// class ConfigForm extends StatefulWidget {
//   final void Function(String) onSubmit;

//   ConfigForm({required this.onSubmit});

//   @override
//   _ConfigFormState createState() => _ConfigFormState();
// }

// class _ConfigFormState extends State<ConfigForm> {
//   final _formKey = GlobalKey<FormState>();
//   late TimeOfDay _selectedTime;
//   double _frequency = Constants.defaultFrequency;
//   double _duration = Constants.defaultDuration;
//   double _minHumidity = Constants.defaultMinHumidity;
//   double _maxHumidity = Constants.defaultMaxHumidity;

//   @override
//   void initState() {
//     super.initState();
//     _selectedTime = TimeOfDay.now();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Hora de Inicio',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           _buildTimePicker(),
//           SizedBox(height: 16),
//           Text(
//             'Frecuencia de Riego (minutos)',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           _buildFrequencySlider(),
//           SizedBox(height: 16),
//           Text(
//             'Duración del Riego (segundos)',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           _buildDurationSlider(),
//           SizedBox(height: 16),
//           Text(
//             'Humedad Mínima',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           _buildMinHumiditySlider(),
//           SizedBox(height: 16),
//           Text(
//             'Humedad Máxima',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           _buildMaxHumiditySlider(),
//           SizedBox(height: 16),
//           ElevatedButton(
//             onPressed: _submitForm,
//             child: Text('Guardar Configuración'),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTimePicker() {
//     return ListTile(
//       title: Text('Hora seleccionada: ${_selectedTime.format(context)}'),
//       trailing: Icon(Icons.access_time),
//       onTap: _showTimePicker,
//     );
//   }

//   Widget _buildFrequencySlider() {
//     return Slider(
//       value: _frequency,
//       min: Constants.minFrequency,
//       max: Constants.maxFrequency,
//       divisions: (Constants.maxFrequency - Constants.minFrequency).toInt(),
//       label: _frequency.round().toString(),
//       onChanged: (value) {
//         setState(() {
//           _frequency = value;
//         });
//       },
//     );
//   }

//   Widget _buildDurationSlider() {
//     return Slider(
//       value: _duration,
//       min: Constants.minDuration,
//       max: Constants.maxDuration,
//       divisions: (Constants.maxDuration - Constants.minDuration).toInt(),
//       label: _duration.round().toString(),
//       onChanged: (value) {
//         setState(() {
//           _duration = value;
//         });
//       },
//     );
//   }

//   Widget _buildMinHumiditySlider() {
//     return Slider(
//       value: _minHumidity,
//       min: Constants.minHumidity,
//       max: Constants.maxHumidity,
//       divisions: (Constants.maxHumidity - Constants.minHumidity).toInt(),
//       label: _minHumidity.round().toString(),
//       onChanged: (value) {
//         setState(() {
//           _minHumidity = value;
//         });
//       },
//     );
//   }

//   Widget _buildMaxHumiditySlider() {
//     return Slider(
//       value: _maxHumidity,
//       min: Constants.minHumidity,
//       max: Constants.maxHumidity,
//       divisions: (Constants.maxHumidity - Constants.minHumidity).toInt(),
//       label: _maxHumidity.round().toString(),
//       onChanged: (value) {
//         setState(() {
//           _maxHumidity = value;
//         });
//       },
//     );
//   }

//   void _showTimePicker() async {
//     final TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: _selectedTime,
//     );
//     if (pickedTime != null && pickedTime != _selectedTime) {
//       setState(() {
//         _selectedTime = pickedTime;
//       });
//     }
//   }

//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       final timeString =
//           '${_selectedTime.hour}:${_selectedTime.minute.toString().padLeft(2, '0')}';
//       final configMessage =
//           'CONFIG: $_frequency,$_duration,$_minHumidity,$_maxHumidity,$timeString';
//       widget.onSubmit(configMessage);
//     }
//   }
// }
