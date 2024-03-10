import 'package:bluegrow/services/notification_service.dart';
import 'package:flutter/material.dart';
/* import 'package:bluegrow/views/home_page.dart';*/
/* import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart'; */

void main() async {
  //Se asegura de que se ejecuten todas las inicializaciones antes de correr el metodo main
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz de su aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notification',
      /* theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ), */
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Material App Bar"),  
        ),
        body: const PaginaPrincipal(),
      ),
      //home: const MyHomePage(title: 'Flutter BLE Notification Home Pagess'),
    );
  }
}

class PaginaPrincipal extends StatelessWidget{
  const PaginaPrincipal({
    Key? key,
  }) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: ElevatedButton(
        onPressed: (){
          showNotification();
        //print("Hola");
        },
        child: const Text("Mostrar notificacion humedad")),
    );
  }
}