import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger/Controller/counter_controller.dart';
class CounterScreen extends StatelessWidget {
   CounterScreen({super.key});
  var Controller= Get.put(CounterController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
        leading: IconButton(icon:     Icon(Icons.arrow_back_ios), onPressed: () {  },),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('You can push the button to increase'),
            
            SizedBox(height: 20,),
            // On your Stateless/Stateful class, use GetBuilder to update Text when increment be called
GetBuilder<CounterController>(
  init: CounterController(), // INIT IT ONLY THE FIRST TIME
  builder: (_) =>  Text('${Controller.counter}',style: Theme.of(context).textTheme.headline4,),
  ),

//Initialize your controller only the first time. The second time you are using ReBuilder for the same controller, do not use it again. Your controller will be automatically removed from memory as soon as the widget that marked it as 'init' is deployed. You don't have to worry about that, Get will do it automatically, just make sure you don't start the same controller twice.
           
      
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Controller.increment();
        },
        child: Icon(Icons.add),
        ),
    );
  }
}