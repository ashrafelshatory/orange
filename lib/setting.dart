import 'package:flutter/material.dart';
import 'package:orange/our_partenrs.dart';
import 'package:orange/support.dart';
import 'package:orange/terms&conditions.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('Settings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ListTile(
            title: Text('FAQ'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info()));
            },
            child: ListTile(
              title: Text('Terms & & Condition'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Our_partners()));
            },
            child: ListTile(
              title: Text('Our Partenrs'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Support()));
            },
            child: ListTile(
              title: Text('Support'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('Are You Sure?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel',style: TextStyle(color: Colors.deepOrange),),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK',style: TextStyle(color: Colors.deepOrange),),
                    ),
                  ],
                ),
              );
            },
            child: ListTile(
              title: Text('Log out'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
