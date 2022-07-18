import 'package:flutter/material.dart';

class DepartmentTile extends StatelessWidget {
  DepartmentTile({Key? key, required this.image,required this.section}) : super(key: key);
   late String image ;
  late  String section;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 100,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      decoration: BoxDecoration(       
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 208, 206, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Image.asset(image,height:40,),
            const SizedBox(
              width: 5,
            ),
            Text(section),
          ],
        ),
      ),
    );
  }
}
