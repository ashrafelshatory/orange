import 'package:flutter/material.dart';
import 'package:orange/add_notes.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: 
      Scaffold(appBar: AppBar(backgroundColor: Colors.white,centerTitle: true,
        title: Text('Lectures',style: TextStyle(fontSize: 20,color: Colors.black),),),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
          Text('Theres No Data To Show',style: TextStyle(fontSize:25 ),)
            ]),
      ),
          floatingActionButton: new FloatingActionButton(
              elevation: 0.0,
              child: new Icon(Icons.add),
              backgroundColor: Colors.blueGrey,
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_notes()));}
          )
      )
      
      ,);
  }
}
