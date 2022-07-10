import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/model/auth.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/repo/sign_in_repo.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.repo) : super(SignInInitial());

  final SignInRepo repo;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());
    final res = await repo.signIn(email: email, password: password);

    res.fold((l) => emit(SignInError(l)), (r) => emit(SignInSuccess(r)));
  }
}
