import 'package:flutter/material.dart';
import 'package:medicare/screens/dashscreen.dart';
import 'package:medicare/signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 223, 234),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 400,
              color: const Color(0Xff8883F0),
              child: Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Column(
                  children: const [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Medicare Hospital',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 230,
                ),
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0Xff8883F0),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Forgot passwort ? ',
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('click here'),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute
                            <MaterialPageRoute>(
                              builder:(context) =>const DashScreen(),),);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0Xff8883F0),
                          ),
                          child: const Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 650),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("don't have an account !"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<MaterialPageRoute>(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: const Text('Signup here'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
