import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
   List<Map<String,String>> downloadvideo =[
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0V2nCufvNsAquXcNdkAezTGZXtvpde5Jnlg&usqp=CAU','title':'The cute cate that you never saw before, so now please look up this cate together','account':'O Mev','view':'238k','time':'2 years',
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0V2nCufvNsAquXcNdkAezTGZXtvpde5Jnlg&usqp=CAU','title':'The cute cate that you never saw before, so now please look up this cate together','account':'O Mev','view':'238k','time':'2 years',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {  },),
        title: Text('Downloads'),
        actions: [Padding(
          padding: const EdgeInsets.only(right:10.0),
          child: Container(
            child: Row(children: [
             Padding(
               padding: const EdgeInsets.only(right: 10),
               child: Icon(Icons.search),
             ),
             Icon(Icons.more_vert)
            ]),
          ),
        )],
      ),
         body:Container(
           child: Container(
            alignment: Alignment.center,
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
                height: 30,
                
                width: MediaQuery.of(context).size.width*0.9,
                
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      
                    )
                  ],
                  color: Colors.black,  
                ),
                child:Row(children: [Text('Your downloads',style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.start,),]),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: downloadvideo.length,
                  itemBuilder: (context,index){
                  return download(
                      image: downloadvideo[index]['image']!,
                      title: downloadvideo[index]['title']!,
                      account: downloadvideo[index]['account']!,
                      view: downloadvideo[index]['view']!,
                      time: downloadvideo[index]['time']!,
                );
                }),
              )
            
            ]),
           ),
         ),
    );
  }
}

class download extends StatelessWidget {
    final String image;
  final String title;
  final String account;
  final String view;
  final String time;
  const download({
    super.key, required this.image, required this.title, required this.account, required this.view, required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(right:10.0),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width*0.4,
            child: Image(image: NetworkImage(image),fit: BoxFit.fill,),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(title,style: TextStyle(color: Colors.white,fontSize: 15),),
                Container(
                  child: Row(children: [
                   Container(
                      decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Row(children: [Icon(Icons.check,size: 15,)]),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Text(account,style: TextStyle(fontSize: 15,color: Colors.grey,)),
                   ),
                  ]),
                ),
                Container(
                  child: Row(children: [
                    Text(view,style: TextStyle(color: Colors.grey,fontSize: 14),),
                    Text('.'),
                    Text(time,style: TextStyle(color: Colors.grey,fontSize: 14),),
                  ]),
                )
          ]),
        )
      
      ]),
    ),
    ]);
  }
}