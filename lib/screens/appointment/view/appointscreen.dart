import 'package:flutter/material.dart';
import 'package:medicare/screens/appointment/appoint.dart';

class AppointScreen extends StatelessWidget {
  const AppointScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Appointments'),
          backgroundColor: Color(0Xff8883F0),
          bottom: const TabBar(
            tabs:[
              Text('Upcoming'),
              Text('History')
            ],),
        ),
        body: TabBarView(children: [
          UpComing(),
          History(),
        ]),
      ),
    );
  }
}
