import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/page/logic/sign_in_cubit.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/page/view/sign_in_view.dart';
import 'package:oracle_digital_app/src/mogule/sign_up/page/logic/sign_up_cubit.dart';

class SignInPage extends StatelessWidget {
  SignInPage({
    Key? key,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpCubit(),
      child: SignInView(
        email: _email,
        formKey: _formKey,
        phone: _phone,
      ),
    );
  }
}
