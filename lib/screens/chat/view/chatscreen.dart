import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SafeArea(
      //top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Color(0XffF7FAFE),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 170,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),),
                color: Color(0Xff8883F0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Messages',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0XffF7FAFE),
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                          hintText: 'Search here',
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                // scrollDirection: Axis.vertical,
                // shrinkWrap: true,
                itemCount: 13,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: ListTile(
                      leading: Container(
                        height: 65,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/doc1.jpg',
                                )),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: Colors.blue),
                      ),
                      title: Text('nm, gvghvbb'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
