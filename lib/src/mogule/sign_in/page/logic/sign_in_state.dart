part of 'sign_in_cubit.dart';

abstract class SignInState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  SignInSuccess(this.auth);

  final Auth auth;

  @override
  List<Object?> get props => [auth];
}

class SignInError extends SignInState {
  SignInError(this.exception);

  final Exception exception;
  @override
  List<Object?> get props => [exception];
}

class FieldStateCubit extends Cubit<bool> {
  FieldStateCubit() : super(true);

  void change() {
    emit(!state);
  }
}
