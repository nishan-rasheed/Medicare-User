import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupEvent>((event, emit) async{
     if(event is SignupDoneevent){
      try {
         final UserCredential = await FirebaseAuth.instance.
         createUserWithEmailAndPassword(
          email: event.email, 
          password: event.password,);

          final userId = UserCredential.user!.uid;

          CollectionReference userInfo = FirebaseFirestore.instance.collection('userdetails');
          await userInfo.doc(userId).set({
           'name':event.username,
           'email':event.email,
           'blood_group':event.blood,
           'age':event.age,
           'phone':event.phone,
           'password':event.password,
          });
          emit(SignupDonestate());
      } catch (e) {
        
      }
     }
    });
  }
}
