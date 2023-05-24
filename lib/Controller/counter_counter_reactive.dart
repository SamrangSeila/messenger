import 'package:get/get.dart';
class CounterControllerReactive extends GetxController{
    var counter=0.obs;

    // or we can write
    RxInt counter2 = RxInt(0);
  void increment(){
    counter++;
  }
}