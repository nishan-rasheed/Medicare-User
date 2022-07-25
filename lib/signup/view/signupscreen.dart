import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicare/login/login.dart';
import 'package:medicare/signup/bloc/signup_bloc.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController bloodController = TextEditingController(text: '');
  TextEditingController ageController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  final SignupBloc _signupBloc = SignupBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _signupBloc,
      child: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if(state is SignupDonestate){
          Navigator.push(context, MaterialPageRoute<MaterialPageRoute>
          (builder: (context) => LoginScreen(),),);
          }
        },
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 215, 223, 234),
          body: Stack(
            children: [
              Container(
                height: 300,
                width: 400,
                color: Color(0Xff8883F0),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    height: 550,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Signup',
                            style: TextStyle(
                              fontSize: 32,
                              color: Color(0Xff8883F0),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 215, 223, 234),
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                            ),
                            child: TextField(
                              controller: usernameController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Username',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 215, 223, 234),
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 215, 223, 234),
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                            ),
                            child: TextField(
                              controller: bloodController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Blood Group',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 215, 223, 234),
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                            ),
                            child: TextField(
                              controller: ageController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Age',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 215, 223, 234),
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                            ),
                            child: TextField(
                              controller: phoneController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Phone Number',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 215, 223, 234),
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                            ),
                            child: TextField(
                              controller: passwordController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 250,
                            child: ElevatedButton(
                              onPressed: (){
                                _signupBloc.add(SignupDoneevent(
                                    username: usernameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    blood: bloodController.text,
                                    age: ageController.text,
                                    phone: phoneController.text,),);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0Xff8883F0),
                              ),
                              child: const Text('Submit'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 650),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account !"),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Login here'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
