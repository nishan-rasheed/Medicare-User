import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicare/login/bloc/login_bloc.dart';
import 'package:medicare/screens/dashscreen.dart';
import 'package:medicare/signup/signup.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final LoginBloc _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginDoneState) {
            
       Navigator.push(
       context,
      MaterialPageRoute<MaterialPageRoute>(
            builder: (context) => const DashScreen(),
           ),
            );
          }
        },
        child: Scaffold(
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
                          TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              hintText: 'Email',
                            ),
                          ),
                          TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
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
                              onPressed: () async{
                                _loginBloc.add(
                                  loginDoneEvent(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                );

                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute<MaterialPageRoute>(
                                //     builder: (context) => const DashScreen(),
                                //   ),
                                // );
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
                              builder: (context) => SignupScreen(),
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
        ),
      ),
    );
  }
}
