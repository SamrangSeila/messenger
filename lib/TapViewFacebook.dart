
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:messenger/preview_image.dart';
import 'package:photo_view/photo_view.dart';
class FacebookView extends StatefulWidget {
   const FacebookView({super.key});


  @override
  State<FacebookView> createState() => _FacebookViewState();
}

class _FacebookViewState extends State<FacebookView> {

   var image1 = [
   
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHIlWZKvPm8KRifDl5TiUTU2EvrxQdfwXGsg&usqp=CAU',
  
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHIlWZKvPm8KRifDl5TiUTU2EvrxQdfwXGsg&usqp=CAU',
  
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHIlWZKvPm8KRifDl5TiUTU2EvrxQdfwXGsg&usqp=CAU',
  ];
  var image2=[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlm3shLGAhbx1dJbkzv_01kLmVRySpFx2_6w&usqp=CAU'
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlm3shLGAhbx1dJbkzv_01kLmVRySpFx2_6w&usqp=CAU'
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlm3shLGAhbx1dJbkzv_01kLmVRySpFx2_6w&usqp=CAU'
  ];
  var image3 =[
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHIlWZKvPm8KRifDl5TiUTU2EvrxQdfwXGsg&usqp=CAU'
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHIlWZKvPm8KRifDl5TiUTU2EvrxQdfwXGsg&usqp=CAU'
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHIlWZKvPm8KRifDl5TiUTU2EvrxQdfwXGsg&usqp=CAU'
  ];
  @override
  Widget build(BuildContext context) {
     
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: ('My photo'),
            ),
            Tab(
              icon: Icon(Icons.upload),
              text: ('Upload'),
            ),
            Tab(
              icon: Icon(Icons.album),
              text: ('Album'),
            ),
          ]),
          centerTitle: true,
          title: const Text('Photo'),
          leading: IconButton( onPressed: () {Navigator.pop(context);},icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: TabBarView(
        children: [
        Container(
          child: GridView.builder(
          padding: EdgeInsets.all(20),
            primary: false,
            // ignore: prefer_const_constructors
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10), 
              itemCount: image1.length,
              itemBuilder: (context,index)
              {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => previewImage(imageUrl: image1[index])));
                  },
                  child: CachedNetworkImage(
        imageUrl: image1[index],
        progressIndicatorBuilder: (context, url, downloadProgress) => 
                Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
        errorWidget: (context, url, error) => Icon(Icons.error),
     ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: NetworkImage(image1[index]),fit: BoxFit.cover,
                  //     )
                  //   ),
                  // ),
                );
          }),
        ),
        Container(
          child: GridView.builder(
            itemCount: image2.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10), itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image2[index]),fit: BoxFit.cover,
                  )
                ),
              );
            }),
        ),
        Container(
          child: GridView.builder(
            itemCount: image2.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
            itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image2[index]
                  ),fit: BoxFit.cover,
                ),
              ));
            },
           ),
        )
      ]),


    ));
  }
}