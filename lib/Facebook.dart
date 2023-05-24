import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/Messenger.dart';

import 'TapViewFacebook.dart';

class Facebook extends StatelessWidget {
     Facebook({super.key});
    
  // ignore: non_constant_identifier_names
  final List _list_profile =[
    {
      'image_big':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLqJFTaGzhAIRE8EY7yErYJBbXtkpsXEUzdQ&usqp=CAU','image_small':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLqJFTaGzhAIRE8EY7yErYJBbXtkpsXEUzdQ&usqp=CAU','name':'Ah Cat','nickname':'O Mev',
    },
    {
      'image_big':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLqJFTaGzhAIRE8EY7yErYJBbXtkpsXEUzdQ&usqp=CAU','image_small':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLqJFTaGzhAIRE8EY7yErYJBbXtkpsXEUzdQ&usqp=CAU','name':'Ah Chmar','nickname':'Ah Mev',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body:ListView.builder (
        itemCount: _list_profile.length,
        itemBuilder:  (context,  index){
          return Profile_widget(
            image_big: _list_profile[index]['image_big'],
            image_small: _list_profile[index]['image_small'],
            name: _list_profile[index]['name'],
            nickname: _list_profile[index]['nickname'],
          );
        

        },
        
        
      ),

    );
  }
}

class Profile_widget extends StatelessWidget {
  final String image_big;
  // ignore: non_constant_identifier_names
  final String image_small;
  final String name;
  final String nickname;
  const Profile_widget({
    super.key, required this.image_big, required this.image_small, required this.name, required this.nickname,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.height*0.5:MediaQuery.of(context).size.height*0.25,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
             Stack(children: [
               Container(
                height: MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.height*0.35: MediaQuery.of(context).size.height*0.18,
                width: double.infinity,
                child: Image(image: NetworkImage(image_big),fit: BoxFit.cover,),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(Icons.camera_alt),
      
              )),
             ],),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child:  CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(image_small),
                ),
              ))
            ],
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              Text(nickname,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),)
            ],
          ),
        
        
        ],
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child:Icon(Icons.add),
              ),
              Text('Add to story'),
            ]),
          ),
          Container(
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child:Icon(Icons.more),
              ),
              Text('More'),
            ]),
          ),
         
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.draw,color:Colors.white,size: 25,),
                    SizedBox(width: 10,),
                    Text('Edit Profile',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 15),)
                  ],
                ),
              ]),
            ),
            Container(
              height: 30,
              decoration:BoxDecoration(
                color: Colors.grey.withOpacity(0.5)
              ),
              width: MediaQuery.of(context).size.width*0.1,
              child:Icon(Icons.more_horiz),
            ),
            
          
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: Column(
            children: [
            Row(
          children: [
            Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Icon(Icons.school),
                    SizedBox(width: 10,),
                    Text('Studies at Norton university ',style: TextStyle(fontWeight: FontWeight.bold),),
                  ]),
                ),  
          ],
        ),
        Row(
          children: [
            Container(
                  child: Row(children: [
                    Icon(Icons.home),
                    SizedBox(width: 10,),
                    Text('Lives in Kandal, Phnom Penh, Cambodia',style: TextStyle(fontWeight: FontWeight.bold),),
                  ]),
                ) 
          ],
        ),
        Row(
          children: [
            Container(
                  child: Row(children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 10,),
                    Text('From Phnom Penh',style: TextStyle(fontWeight: FontWeight.bold),),
                  ]),
                ) 
          ],
        ),
        Row(
          children: [
            Container(
                  child: Row(children: [
                    Icon(Icons.favorite),
                    SizedBox(width: 10,),
                    Text('Married haha',style: TextStyle(fontWeight: FontWeight.bold),),
                  ]),
                ) 
          ],
        ),
        Row(
          children: [
            Container(
                  child: Row(children: [
                    Icon(Icons.more_horiz),
                    SizedBox(width: 10,),
                    Text('See your About info',style: TextStyle(fontWeight: FontWeight.bold),),
                  ]),
                ) 
          ],
        ),
        Row(
            mainAxisAlignment:MainAxisAlignment.center,
          children: [
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
              color: Colors.blue[50],  
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Edit Public details',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16),
              textAlign:TextAlign.center,),
            ),
          )
        ],),
         Row(
          
         children: [
          Padding(
            padding: const EdgeInsets.only(left:8),
            child: Container(
              width: MediaQuery.of(context).size.width*0.9,
            
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              
              Container(
                child: Column(children: [
                  Container(
                    child: InkWell(
                      child:Icon(Icons.home),
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FacebookView()));
                      },
                    ),
                  ),
                  Text('Friends' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Text('2,181 friends',style: TextStyle(fontSize: 15),)
                ]),
              ),
              
              Container(
                child: Column(children: [
                  Text('Find Friends',style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold,fontSize: 15),),
                ]),
              ),
            ],),
            ),
          )
         ],
         ),
         
         
          
          SizedBox(height: 10,),
          Row(children: [
           Container(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                decoration: BoxDecoration(
                            color: Colors.grey,
                ),
              )
            ]),
           ) 
          ],)
          
          ]),
        ),
      )
    ]);
  }
}