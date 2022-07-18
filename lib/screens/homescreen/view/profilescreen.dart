import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/med.webp'),
                ),
              ),
            ),
            const Positioned(
             
              top: 110,
               child: CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/images/user.png'),
                radius: 70,
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: const  EdgeInsets.only(left: 35,),
                width: 300,
                height: 250,
                color: Colors.green,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: const [
                        Icon(FontAwesomeIcons.userCheck),
                        SizedBox(width: 20,),
                        Text(
                          'Nishan Rasheed',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(FontAwesomeIcons.droplet),
                        SizedBox(width: 20,),
                        Text(
                          'B +ve',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.calendar_month_rounded),
                        SizedBox(width: 20,),
                        Text(
                          '04/02/2000',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.email_outlined),
                        SizedBox(width: 20,),
                        Text(
                          'nishanrd@gmail.com',
                         
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(FontAwesomeIcons.phone),
                        SizedBox(width: 20,),
                        Text(
                          '7356092563',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
