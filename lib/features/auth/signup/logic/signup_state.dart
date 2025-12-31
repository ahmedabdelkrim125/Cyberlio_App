enum AuthStatus { initial, loading, success, error }

class SignupState {
  final AuthStatus status;
  final String? message;

  const SignupState._(this.status, [this.message]);

  const SignupState.initial() : this._(AuthStatus.initial);
  const SignupState.loading() : this._(AuthStatus.loading);
  const SignupState.success() : this._(AuthStatus.success);
  const SignupState.error(String message) : this._(AuthStatus.error, message);
}
