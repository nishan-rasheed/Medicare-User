part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class loginDoneEvent extends LoginEvent{
  loginDoneEvent({
    required this.email,
    required this.password,
  });
  String email;
  String password;
}
