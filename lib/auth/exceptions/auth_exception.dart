class AuthException {}

class LoginException extends AuthException {
  LoginException({required this.text});
  final String text;

  @override
  String toString() {
    return "Login exception: $text";
  }
}
