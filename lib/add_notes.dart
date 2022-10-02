import 'package:flutter/material.dart';

import 'components/mycard.dart';

class Add_notes extends StatelessWidget {
  const Add_notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar:
    AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orange),
        backgroundColor: Colors.white,centerTitle: true,
        title: Text('Lectures',style: TextStyle(fontSize: 20,color: Colors.black),)),

body: Column(children: [
  text_addnotes(Text: 'Title'),
  text_addnotes(Text: '2022-09-29 12:34:34.34434'),
  text_addnotes(Text: 'Title'),
  ElevatedButton(onPressed: (){}, child: Text('+    Add'),)

]),

    ),);
  }
}
