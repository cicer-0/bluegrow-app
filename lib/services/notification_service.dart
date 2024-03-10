import 'package:flutter_local_notifications/flutter_local_notifications.dart';

//Instancia
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

Future<void> initNotifications() async {
  //Declaramos la constate para los diferentes SO.
  //Para Android
  const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('icono_notificacion');

  //Para Ios
  const DarwinInitializationSettings initializationSettingsIOS = DarwinInitializationSettings();

  const InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid,
  iOS: initializationSettingsIOS);

//Inicializamos
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}

Future<void> showNotification() async {
  const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails('1', 'your channel name', 
  importance: Importance.max,
  priority: Priority.high);
  /* const DarwinNotificationDetails darwinNotificationDetails = DarwinNotificationDetails(); */

  //objeto de notificacion
  const NotificationDetails notificationDetails = NotificationDetails(
    android: androidNotificationDetails,
  );

  await flutterLocalNotificationsPlugin.show(1, 'Titulo de notificacion', 'Esta es una notificacion de sensor de humedad', notificationDetails);
}