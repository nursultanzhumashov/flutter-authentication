import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oracle_digital_app/src/mogule/sign_up/page/logic/sign_up_cubit.dart';
import 'package:oracle_digital_app/src/mogule/sign_up/page/view/sign_up_view.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({
    Key? key,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpCubit(),
      child: SignUpView(
        email: _email,
        formKey: _formKey,
        phone: _phone,
      ),
    );
  }
}
