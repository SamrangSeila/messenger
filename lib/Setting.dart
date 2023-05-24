import 'package:flutter/material.dart';
class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('Account Setting and Privacy',style: TextStyle(color: Colors.black),),
        leading: IconButton(icon: const Icon(Icons.arrow_back),color: Colors.black, onPressed: () {  },),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search),color: Colors.black,)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                        const Text('Account Setting',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 16),),
                        const Text('Manage your account setting an dset smail preferences'),
                ]),
              ),
            ),
          const Divider(thickness: 1,),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Privacy'),
            subtitle:Text('manage your account security'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(thickness: 1,),
          const ListTile(
            leading: Icon(Icons.key),
            title: Text('Security'),
            subtitle:Text('Manage your security'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(thickness: 1,),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            subtitle:Text('Mange your notification'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(thickness: 1,),
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle:Text('Manage your language settings'),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        
        ]),
      ),
      
    );
  }
}