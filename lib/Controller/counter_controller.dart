
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CounterController extends GetxController{
  var counter = 20;

  void increment(){
    counter++;
    print(counter);
     update(); // use update() to update counter variable on UI when increment be called
  }
}