import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/Add.dart';
import 'package:messenger/Home.dart';
import 'package:messenger/Library.dart';
import 'package:messenger/Subscription.dart';
import 'package:messenger/Downloads.dart';
import 'package:messenger/Video.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex=0;
  final List _screen=[
        Home(),
        Video(),
        Add(),
        Download(),
        Library(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: _screen[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          print('index is $index');
          setState(() {
            _currentIndex=index;
          });
         
        },
        type: BottomNavigationBarType.fixed,
        items: 
        [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.library_add),label: 'Video'),
            BottomNavigationBarItem(icon: Icon(Icons.add,size: 40,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions),label: 'Subscription'),
            BottomNavigationBarItem(icon: Icon(Icons.video_collection),label: 'Library'),
      ]),

       
        
    );
  }
}