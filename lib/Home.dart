import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   List<Map<String,String>> profilePost=[
    {
      'image':'https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg',
      'imageavatar':'https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg',
      'title':'Adventure in the forest',
      'sub_title':'Adventure is the best way to learn soemthing in the forest',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfldWybpyEomxNG-y1eCAAST29QlXvV_CgSsH-73JGVylcuCj703IMRGgSRYkG205y6Bk&usqp=CAU',
      'imageavatar':'https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg',
      'title':'Adventure in the forest',
      'sub_title':'Adventure is the best way to learn soemthing in the forest',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZgUcMT32s5M0aBiDujb08Zrkr3KWuQLfsooAGTDO6elxiiMo4hJF5UF471R6TVO5JPKs&usqp=CAU',
      'imageavatar':'https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg',
      'title':'Adventure in the forest',
      'sub_title':'Adventure is the best way to learn soemthing in the forest',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgou12t_CbVHwyM1NYuESvaT4kL-c9YbeNz7aoPaamikAxzsswZO-n7F2FnDaqIuz3og8&usqp=CAU',
      'imageavatar':'https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg',
      'title':'Adventure in the forest',
      'sub_title':'Adventure is the best way to learn soemthing in the forest',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHwz9CORrKGFuw6E2fknlPm172Qt0S2j2u03YCQlLtvjkGZij6p7aQoPmmBoxQpWHc6SM&usqp=CAU',
      'imageavatar':'https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg',
      'title':'Adventure in the forest',
      'sub_title':'Adventure is the best way to learn soemthing in the forest',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF3VZG91uh9icdQU3oSlW0Ut2XbGqehZ7D4brem47X6BJvaqf7qnlhu5eiCprPysadsDw&usqp=CAU',
      'imageavatar':'https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg',
      'title':'Adventure in the forest',
      'sub_title':'Adventure is the best way to learn soemthing in the forest',
    },
    {
      'image':'https://cutewallpaper.org/23/cute-cat-live-wallpaper/2663014657.jpg',
      'imageavatar':'https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg',
      'title':'Adventure in the forest',
      'sub_title':'Adventure is the best way to learn soemthing in the forest',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar( 
        backgroundColor: Colors.white,
        
                title:Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png'),height: 99,width: 100,),
      

        actions:<Widget> [
       Padding(
         padding: const EdgeInsets.only(right: 10),
         child: Container(
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: Container(
                child:GestureDetector(
                  child:Icon(Icons.notification_add,color: Colors.black,),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:15),
               child: Container(
                         child: GestureDetector(
                onTap: (){},
                child: Icon(Icons.search,color: Colors.black,),
                         ),
                       ),
             ),
          Container(

             child: GestureDetector(
              onTap: (){},
              child: Container( 
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                
                child: Icon(Icons.person,color: Colors.black),
              ),
            ),
          ),
          ]),
         ),
       )
      ]),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: profilePost.length,
        itemBuilder: (context,index){
        return postyoutube(
             image: profilePost[index]['image']!,
                  imageavatar: profilePost[index]['imageavatar']!,
                  title: profilePost[index]['title']!,
                  sub_title: profilePost[index]['sub_title']!,
        );
      }),
    );
  }
}
class postyoutube extends StatelessWidget {
    final String image;
  final String imageavatar;
  final String title;
  final String sub_title;

  const postyoutube({
    super.key, required this.image, required this.imageavatar, required this.title, required this.sub_title,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
            Container(
              child: Row(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).orientation==Orientation.landscape? MediaQuery.of(context).size.height*0.8: MediaQuery.of(context).size.height*0.34,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 180,
                        child:   Image(image: NetworkImage(image),fit: BoxFit.fill,),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width,
                        height:70,
           
                        child: Row(
                          children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(imageavatar),),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: title,style: TextStyle(fontSize: 15,color: Colors.white,)), 
                                  TextSpan(text: '\n'),
                                  TextSpan(text:sub_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey)),
                                ]
                              ),
                            ),
                          )
                        ]),
                      )
                  ]),
                ),
              ]),
            )
          ],
      ),
    );
  }
}