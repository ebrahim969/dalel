import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  
   String? fristName;
   String? lastName;
   String? emailAddress;
   String? password;
   GlobalKey<FormState> signUpKey = GlobalKey();
   bool termsAndConditionCkeckValue = false;
   bool? obscurePasswordTextValue = true;
  signUpWithEmailAndPassword() async {
    try {
      emit(AuthLoading());
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(AuthSuccess());
      log("success");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log("failure");
        emit(AuthFailure("The password provided is too weak"));
      } else if (e.code == 'email-already-in-use') {
        emit(AuthFailure("The account already exists for that email"));
      }
    } catch (e) {
      log("failure");
      emit(AuthFailure(e.toString()));
    }
  }

  termsAndConditionUpdateState({required bool newValue})
  {
    termsAndConditionCkeckValue = newValue;
    emit(AuthCheckBoxState());
  }
  
  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }
}
