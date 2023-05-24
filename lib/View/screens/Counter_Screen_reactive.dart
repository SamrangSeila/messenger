import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger/Controller/counter_counter_reactive.dart';


class CounterScreenReactive extends StatelessWidget {
   CounterScreenReactive({super.key});

final Controller = Get.put(CounterControllerReactive());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('you can push'),
          Obx (() => Text ('${Controller.counter}',style: Theme.of(context).textTheme.headline4,
          ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Controller.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}