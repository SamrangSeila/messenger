import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
   Messenger({super.key});
  List<Map<String,String>> _lstStory =[
    {
      'name':'Johm','profile':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRii1dwDzojY47u5u4e62aN17Avgs5sMtg6Dg&usqp=CAU'
    },
    {
      'name':'Johm','profile':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRii1dwDzojY47u5u4e62aN17Avgs5sMtg6Dg&usqp=CAU'
    },
    {
      'name':'Johm','profile':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRii1dwDzojY47u5u4e62aN17Avgs5sMtg6Dg&usqp=CAU'
    },
    {
      'name':'Johm','profile':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRii1dwDzojY47u5u4e62aN17Avgs5sMtg6Dg&usqp=CAU'
    },
    {
      'name':'Johm','profile':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRii1dwDzojY47u5u4e62aN17Avgs5sMtg6Dg&usqp=CAU'
    },
    {
      'name':'Johm','profile':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRii1dwDzojY47u5u4e62aN17Avgs5sMtg6Dg&usqp=CAU'
    },
  ];
  List<Map<String, String>> _lstChat = [
  {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
  {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
  {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
  {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
  {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
  {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Column(children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _lstStory.length,
            itemBuilder: (context,index){
            return Container(
              margin: const EdgeInsets.all(10),
                child: Column(children: [
                  CircleAvatar(
                    radius: 35,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(_lstStory[index]['profile']!),
                    ),
                  ),
                   Text(_lstStory[index]['name']!),
                ]),
            );
          }),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(child: ListView.builder(
          itemCount: _lstChat.length,

          itemBuilder: (context,index){
           return ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: CircleAvatar(backgroundImage: NetworkImage(_lstStory[index]['profile']!))),
            title: Text(_lstChat[index]['name']!),
            subtitle: Text(_lstChat[index]['text']!),
            trailing: Text(_lstChat[index]['time']!),
           );
        }))
      ]),

    );
  }
}