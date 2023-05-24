
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger/Controller/counter_controller.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}