import 'package:dartz/dartz.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/client/client.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/model/auth.dart';

abstract class SignInService {
  Future<Either<Exception, Auth>> signIn({
    required String email,
    required String password,
  });

  Future<Either<Exception, Auth>> signUp();
}

class SignInServiceImpl implements SignInService {
  SignInServiceImpl(this.client);

  final ApiClient client;

  @override
  Future<Either<Exception, Auth>> signIn({
    required String email,
    required String password,
  }) async {
    final res = await client.post<Auth>(
      '/sign_in',
      fromJson: authFromJson,
      fn: 'sign_in',
      body: <String, dynamic>{
        'email': email,
        'password': password,
      },
    );

    return Right(res);
  }

  @override
  Future<Either<Exception, Auth>> signUp() {
    throw UnimplementedError();
  }
}
