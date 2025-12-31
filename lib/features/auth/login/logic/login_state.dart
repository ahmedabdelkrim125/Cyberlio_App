enum AuthStatus { initial, loading, success, error }

class LoginState {
  final AuthStatus status;
  final String? message;

  const LoginState._(this.status, [this.message]);

  const LoginState.initial() : this._(AuthStatus.initial);
  const LoginState.loading() : this._(AuthStatus.loading);
  const LoginState.success() : this._(AuthStatus.success);
  const LoginState.error(String message) : this._(AuthStatus.error, message);
}
