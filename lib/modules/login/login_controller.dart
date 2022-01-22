import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class loginController {
  Future<void> googleSignIn() async {
    UserModel? user;
    LoginState state = LoginStateEmpty();

    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      state = LoginStateLoading();
      print(state);
      final account = await _googleSignIn.signIn();
      user = UserModel.google(account!);
      state = LoginStateSuccess(user: user);
      print(state);
      print("Nome ${user.name}");
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
      print(state);
    }
  }
}
