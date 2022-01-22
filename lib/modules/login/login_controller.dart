import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class loginController {
  UserModel? user;
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;

  loginController({required this.onUpdate});

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      state = LoginStateLoading();
      onUpdate();
      print(state);
      final account = await _googleSignIn.signIn();
      user = UserModel.google(account!);
      state = LoginStateSuccess(user: user!);
      onUpdate();
      print("Nome ${user?.name}");
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
      onUpdate();
    }
  }
}
