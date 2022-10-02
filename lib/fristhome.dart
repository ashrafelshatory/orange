import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:orange/setting.dart';

import 'inhome/home.dart';
import 'inhome/news.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  List<Widget> screen = [const Home1(), const News(), const Setting()];

  void _onChange(int select) {
    setState(() {
      _index = select;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_index],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
            rippleColor: Colors.orange,
            // tab button ripple color when pressed
            selectedIndex: _index,
            onTabChange: _onChange,
            haptic: true,
            // haptic feedback
            tabBorderRadius: 20,
            curve: Curves.easeInOutCirc,

            // tab animation curves,
            gap: 2,
            // the tab button gap between icon and text
            color: Colors.grey[800],
            // unselected icon color
            activeColor: Colors.orange,
            // selected icon and text color
            iconSize: 30,
            // tab button icon size
            tabBackgroundColor: Colors.grey.withOpacity(0.2),

            // selected tab background color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: const [
              GButton(
                text: 'Home',
                icon: Icons.home,
                iconActiveColor: Colors.orange,
                textColor: Colors.orange,
              ),
              GButton(
                icon: Icons.newspaper,
                iconActiveColor: Colors.orange,
                textColor: Colors.orange,
                text: 'News',
              ),
              GButton(
                icon: Icons.settings,
                iconActiveColor: Colors.orange,
                textColor: Colors.orange,
                text: 'Setteng',
              )
            ],
          ),
        ));
  }
}
