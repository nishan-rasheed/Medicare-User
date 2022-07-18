import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: 6,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 150,
              color: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text(
                            'Dr. Alex John',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Cardiologist'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RichText(
                          text: const TextSpan(children: [
                        WidgetSpan(
                          child: Icon(Icons.calendar_month),
                        ),
                        TextSpan(text: '12/06/2022'),
                      ])),
                      RichText(
                          text: const TextSpan(children: [
                        WidgetSpan(
                          child: Icon(Icons.access_time_filled_sharp),
                        ),
                        TextSpan(text: '10.45 Am'),
                      ])),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Delete'),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 242, 94, 89),),
                          )),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
