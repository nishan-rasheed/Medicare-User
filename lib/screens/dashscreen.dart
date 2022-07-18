import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicare/screens/appointment/appoint.dart';
import 'package:medicare/screens/chat/chat.dart';
import 'package:medicare/screens/homescreen/home.dart';
import 'package:medicare/screens/settings/settings.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  int _selectedIndex = 0;
  List<Widget> pages = <Widget>[
    HomeScreen(),
    ChatScreen(),
    AppointScreen(),
    SettingScreen(),
  ];
  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            30,
          ),
          child: BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
            iconSize: 20,
            backgroundColor:  Color.fromRGBO(227, 236, 249, 1),
            
            
            currentIndex: _selectedIndex,
            onTap: changeIndex,
            selectedItemColor: Color(0Xff8883F0),
            items: const [
              BottomNavigationBarItem(
                icon:Icon(FontAwesomeIcons.house),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon:Icon(FontAwesomeIcons.solidComments),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.calendarCheck),
                label: 'Appontments',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
