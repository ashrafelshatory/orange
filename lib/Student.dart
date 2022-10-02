import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Widget x = ListTile(
    title: Text('flutter'),
    trailing: Icon(Icons.arrow_forward),
  );
  Widget t = ListTile(
    title: Text('dart'),
    trailing: Icon(Icons.arrow_forward),
  );

  List<Widget> r = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(children: r),
              ElevatedButton(onPressed: (){
                r.add(t);
                r.add(x);
                setState((){});
              }, child: Text('hg'))
            ],
          ),
        ),
      ),
    );
  }
}
