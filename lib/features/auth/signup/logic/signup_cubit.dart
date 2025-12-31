import 'dart:async';

import 'package:flutter/foundation.dart';

import '../data/models/signup_model.dart';
import '../data/repo/signup_repository.dart';
import 'signup_state.dart';

class SignupCubit {
  final SignupRepository _repo = SignupRepository();

  final ValueNotifier<SignupState> state = ValueNotifier<SignupState>(
    const SignupState.initial(),
  );

  void dispose() => state.dispose();

  Future<void> signup(String email, String password) async {
    state.value = const SignupState.loading();
    try {
      final model = SignupModel(email: email, password: password);
      await _repo.createAccount(model);
      state.value = const SignupState.success();
    } catch (e) {
      state.value = SignupState.error(e.toString());
    }
  }
}
