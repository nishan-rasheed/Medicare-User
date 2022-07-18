import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:medicare/screens/doctors/doctor.dart';
import 'package:medicare/screens/homescreen/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: const Color(0Xff8883F0),
        body: Column(
          children: [
            ListTile(
              subtitle: const Text(
                'nisham',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              title: const Text('Hello'),
              trailing: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute<MaterialPageRoute>
                  (builder:(context) => const ProfileScreen(),),);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.png'),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              height: 135,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: ImageSlideshow(
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset('assets/images/slide1.png')),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset('assets/images/slide2.jpg')),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(
                        'assets/images/slide3.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset('assets/images/slide4.png'))
                  ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                color: Color(0XffF7FAFE),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: '   search here'),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 3,
                  right: 5,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.vertical,
                  child: Column(
                    //  mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30),),
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20,),
                          // height: 100,

                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                DepartmentTile(
                                  image: 'assets/images/cardio.png',
                                  section: 'Cardio',
                                ),
                                DepartmentTile(
                                    image: 'assets/images/neuro.png',
                                    section: 'Neurology',),
                                DepartmentTile(
                                    image: 'assets/images/ortho.png',
                                    section: 'Orthology',),
                                DepartmentTile(
                                    image: 'assets/images/ent.png',
                                    section: 'ENT',),
                                DepartmentTile(
                                    image: 'assets/images/eye.png',
                                    section: 'EYE',),
                                DepartmentTile(
                                    image: 'assets/images/tooth.png',
                                    section: 'Dental',),
                              ],
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Doctors List',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute<MaterialPageRoute>(
                                        builder: (context) => DoctorList(),
                                      ));
                                },
                                child: Text('See All >'))
                          ],
                        ),
                      ),
                      Container(
                        height: 190,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.all(
                                5,
                              ),
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(255, 208, 206, 255),
                              ),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/doc1.jpg',
                                        height: 90,
                                      ),
                                    ),
                                    Text(
                                      'doctor 1',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Cardiologist'),
                                  ]),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
