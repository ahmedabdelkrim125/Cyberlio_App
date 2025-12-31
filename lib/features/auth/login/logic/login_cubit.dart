import 'dart:async';

import '../data/models/login_model.dart';
import '../data/repo/login_repository.dart';
import 'login_state.dart';
import 'package:flutter/foundation.dart';

class LoginCubit {
  final LoginRepository _repo = LoginRepository();

  final StreamController<LoginState> _controller =
      StreamController<LoginState>.broadcast();
  final LoginState _state = const LoginState.initial();

  final ValueNotifier<LoginState> state = ValueNotifier<LoginState>(
    const LoginState.initial(),
  );

  void dispose() {
    _controller.close();
    state.dispose();
  }

  Future<void> login(String email, String password) async {
    state.value = const LoginState.loading();
    try {
      final model = LoginModel(email: email, password: password);
      await _repo.signIn(model);
      state.value = const LoginState.success();
    } catch (e) {
      state.value = LoginState.error(e.toString());
    }
  }
}
