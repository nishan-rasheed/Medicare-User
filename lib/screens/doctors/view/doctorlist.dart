import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 206, 255),
        body:Stack(
          // alignment: Alignment.center,
          clipBehavior: Clip.none,         
          children: [
             Container(
              height: 150,
               color: Color(0Xff8883F0),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,bottom: 5,),
                    child: Text('Doctors',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17,),
                      color: Color(0XffF7FAFE)
                    ),
                    child:const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'search here',
                      ),
                    ))
                ],
               ),
             ),
           Padding(
             padding: const EdgeInsets.only(top: 130,left: 10),
             child: Container(
              decoration: BoxDecoration(
                color:Colors.transparent,
                //  const Color(0XffF7FAFE),
                // borderRadius: BorderRadius.circular(20)
              ),
              width: MediaQuery.of(context).size.width-20,
              height: 560,
              child: ListView.builder(
                       
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Color(0XffF7FAFE),
                      // Colors.grey,
                    ),
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(radius: 45,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                             const  Padding(
                                 padding: const EdgeInsets.only(left: 130,bottom: 5,),
                                 child: Icon(Icons.favorite),
                               ),
                               const Text('Dr.john sam',
                                style: TextStyle(
                                  fontSize: 22,
                                ),),
                               const Text('Cardiologist'),
                              const  Text('Rating'),
                                 ElevatedButton(onPressed: (){},
                         child: const Text('Book Appointment'),)
                              ],
                            )
                          ],
                        ),
                       
                      ],
                    ),
                    
                  );
                },
              ),
             ),
           )
              
          ],)
      ),
    );
  }
}