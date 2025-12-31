import 'dart:async';

import '../models/signup_model.dart';

class SignupRepository {
  Future<void> createAccount(SignupModel model) async {
    await Future.delayed(const Duration(seconds: 1));
    // Placeholder - no backend
  }
}
