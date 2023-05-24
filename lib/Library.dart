import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container
      (
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
               boxShadow:[
                BoxShadow(
                  blurRadius: 5,
                  offset: Offset(0,3),
                ),
              ]
        ),
        child: Column(
          children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border:Border(bottom: BorderSide(width:0.2,color: Colors.white),),
              color: Colors.black.withOpacity(0.8),
              boxShadow:[
                BoxShadow(
                  blurRadius: 5,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    decoration: BoxDecoration( 
                    ),
                    child:  Icon(Icons.download,color: Colors.white,),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.6  ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Dowloads',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        
                      ),),
                      Text('195 videos',style: TextStyle(
                           color: Colors.white,
                          fontSize: 15,
                      ),),
                    ]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.5)
                    ),
                    child: Icon(Icons.home),
                  )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}