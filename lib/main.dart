import 'package:flutter/material.dart';
/* import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart'; */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz de su aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLE Notification',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Esta llamada a setState le dice al marco de Flutter que algo ha cambiado en este estado
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*Este método se vuelve a ejecutar cada vez que se llama a setState, por ejemplo como lo hace el método _incrementCounter anterior*/
    return Scaffold(
      appBar: AppBar(
        /*PRUEBE ESTO: intente cambiar el color aquí a un color específico  para ver cómo la AppBar cambia de color mientras los demás colores permanecen iguales.*/
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        /*Aquí tomamos el valor del objeto MyHomePage que fue creado por el método App.build y lo usamos para configurar el título de nuestra barra de aplicaciones.*/
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Presione el mas:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
