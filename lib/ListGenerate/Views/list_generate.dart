import 'package:flutter/material.dart';
import 'package:messenger/ListGenerate/Models/ListGenerateModel.dart';
class ListGenerateTest extends StatefulWidget {
  const ListGenerateTest({super.key});

  @override
  State<ListGenerateTest> createState() => _ListGenerateTestState();
}

class _ListGenerateTestState extends State<ListGenerateTest> {
  List<ListGenerateModel> listGenerate = [
    ListGenerateModel(
      icon: Icons.settings,
      text: 'Hello'
    ),
    ListGenerateModel(
      icon: Icons.settings,
      text: 'Seila'
    ),
    ListGenerateModel(
      icon: Icons.settings,
      text: 'Horn'
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.red,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                listGenerate.length, (index) {
                  return ListTile(
                    leading: Icon(listGenerate[index].icon),
                    title: Text(listGenerate[index].text.toString()),
                  );
                },
              )
            ),
          ),
        )
      ),
    );
  }
}