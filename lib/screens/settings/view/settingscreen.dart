import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _toggle = false;
  
  TextStyle titleText = const TextStyle(
          fontSize: 22,
          color:  Color(0Xff8883F0),
          fontWeight: FontWeight.bold,
          );

  TextStyle greyText = const TextStyle(
          fontSize: 18,
          color: Colors.grey,);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: const Color(0XffF7FAFE),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ListTile(
          title: Text('Languages',style: titleText,),
          subtitle: Text('English',style: greyText,),
          trailing:const  Icon(Icons.arrow_forward_ios_outlined),
          onTap: (){},
      ),
      ListTile(
          title: Text('Favourites',style: titleText,),
          subtitle: Text('your preffered doctors',style: greyText,),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: (){},
      ),
       ListTile(
          title: Text('Change password',style: titleText,),      
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: (){},
      ),
      SwitchListTile(
          activeColor:const  Color(0Xff8883F0),
          title: Text('Night Mode',style: titleText,),
          subtitle: Text('Off',style: greyText,),
          value:_toggle,
          onChanged: (bool value){
            setState(() {
             _toggle = value ;
            });
          },),
          Container(
            height: 250,
            width: 300,
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('medicare@gmail.com',style: TextStyle(
                  color:Color(0XffEF8481),
                  fontSize: 18,
                ),),
               const  SizedBox(height: 5,),
                const Text('contact : 0476 2343544',style: TextStyle(
                  color:Color(0XffEF8481),
                  fontSize: 15,
                ),),
                const SizedBox(height: 5,),
                const Text('Calicut,kerala',style: TextStyle(
                 color:Color(0XffEF8481),
                  fontSize: 15,
                ),),
               const  SizedBox(height: 40,),
                const Text('Follow Us On',style: TextStyle(                 
                 
                  fontSize: 18,
                ),),
                const SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                   const Icon(
                      Icons.whatsapp_sharp,
                      color: Colors.green,
                    ),
                 const  SizedBox(
                      width: 10,
                    ),
                  const  Icon(
                      Icons.facebook_sharp,
                      color: Colors.blue,
                    ),
                  const  SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/images/instag.png',
                        color: Colors.pink,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
               ],
          ),
        ),
      ),);
  }
}
