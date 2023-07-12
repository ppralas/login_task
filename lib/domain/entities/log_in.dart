import 'package:equatable/equatable.dart';

class LogIn extends Equatable {
  final String email;
  final String password;

  const LogIn(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}
