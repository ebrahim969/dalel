
abstract class AuthState {}

class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}
class AuthSuccess extends AuthState {}
class AuthFailure extends AuthState {
  final String errMessage;

  AuthFailure(this.errMessage);
}
class AuthCheckBoxState extends AuthState{}
class ObscurePasswordTextUpdateState extends AuthState{}
