import 'package:oracle_digital_app/src/mogule/sign_in/data/data.dart';

class AuthenticationRepository implements AuthenticationService {
  // AuthenticationRepository(AuthenticationService authenticationService)
  //     : _authenticationService = authenticationService;

  AuthenticationRepository(this._authenticationService);

  final AuthenticationService _authenticationService;

  @override
  Future<Auth> getCurrentUser() {
    return _authenticationService.getCurrentUser();
  }

  @override
  Future signInWithPhone(String phoneNumber) {
    return _authenticationService.signInWithPhone(phoneNumber);
  }

  @override
  Future<bool?> signOut() {
    return _authenticationService.signOut();
  }

  @override
  Future<void> verifyPhoneNumber(String? phoneNumber) {
    return _authenticationService.verifyPhoneNumber(phoneNumber);
  }
}

abstract class AuthenticationService {
  Future<Auth> getCurrentUser();
  Future<dynamic> signInWithPhone(String phoneNumber);
  Future<bool?> signOut();
  Future<void> verifyPhoneNumber(String? phoneNumber);
}
