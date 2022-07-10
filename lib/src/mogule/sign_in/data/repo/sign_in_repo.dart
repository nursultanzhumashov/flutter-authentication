import 'package:dartz/dartz.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/model/auth.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/service/sign_in_services.dart';

class SignInRepo {
  SignInRepo(this.service);

  final SignInService service;

  Future<Either<Exception, Auth>> signIn({
    required String email,
    required String password,
  }) async {
    return service.signIn(email: email, password: password);
  }

  Future<Either<Exception, Auth>> signUp() {
    throw UnimplementedError();
  }

  Future<Either<Exception, Auth>> getData() {
    throw UnimplementedError();
  }
}
