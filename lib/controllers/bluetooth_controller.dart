import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

class BluetoothController extends GetxController {
  //Al principio necesitamos una instancia de Bluetooth, creemos
  FlutterBluePlus flutterBlue = FlutterBluePlus.instance;

  //escaneará dispositivos para conexión bluetooth
  Future scanDevices() async{
    //iniciar el escaneo desde aquí, escaneará durante 5 segundos.
    await flutterBlue.startScan(timeout: const Duration(seconds: 15));

    //Después del escaneo, también debemos detenernos.
    flutterBlue.stopScan();
  }
    //nuestra parte de escaneo completada
    //Ahora necesitamos mostrar los dispositivos disponibles, Hagamos eun getter
    Stream<List<ScanResult>> get scanResults => flutterBlue.scanResults;
    //Despues creamos nuestra UI
}
