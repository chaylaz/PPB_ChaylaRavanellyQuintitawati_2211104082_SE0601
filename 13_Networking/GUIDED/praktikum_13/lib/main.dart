import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_13/view/detail_page.dart';
import 'package:praktikum_13/view/my_home_page.dart';
import 'package:praktikum_13/view_model/counter_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  final CounterController controller = Get.put(CounterController());



   
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       initialRoute: '/',
       getPages: [
         GetPage(name: '/' , page: () => MyHomePage(title: 'Belajar GetX')),
         GetPage(name: '/detail' , page: () => DetailPage())
       ],
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

