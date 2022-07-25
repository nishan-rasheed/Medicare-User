part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupDoneevent extends SignupEvent{
  SignupDoneevent(
    {
      required this.email,
      required this.password,
      required this.blood,
      required this.phone,
      required this.username,
      required this.age,
    }
  );
  String email;
  String password;
  String blood;
  String age;
  String username;
  String phone;
  
}


