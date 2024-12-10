import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

    void incrementCounter() {
      counter++;
  }
  void decrementCounter() {
      counter--;
  }

  void getSnackBar() {
    Get.snackbar(
    'GetX SnackBar', 
    'Ini adalah GetX SnackBar',
    duration: const Duration(seconds: 3),
    backgroundColor: Colors.green,
    colorText: Colors.white
    );
  } 

void getbottomsheet() {
  Get.bottomSheet(
    Container(
      height: 200,
      padding: const EdgeInsets.all(16),
      color: Colors.green,
      child: const Center(
      child: const Text('Ini adalah getx Bottom Sheet',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white
      ),
      ),  
      ),
    ),
  );
}

}