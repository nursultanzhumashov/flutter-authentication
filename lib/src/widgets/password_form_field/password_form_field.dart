import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/page/logic/sign_in_cubit.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FieldStateCubit(),
      child: BlocBuilder<FieldStateCubit, bool>(
        builder: (context, state) {
          return TextField(
            //  autofocus: state,
            obscureText: state,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 10, color: Colors.red),
              ),
              hintText: hintText,

              hintStyle: const TextStyle(color: Color(0xff22519680)),
              suffixIcon: IconButton(
                icon: Icon(state ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  context.read<FieldStateCubit>().change();
                },
              ),
              // prefixIcon: SvgPicture.asset(
              //   'assets/vectors/icon_sign_in/icon_lock.svg',
              // ),
            ),
          );
        },
      ),
    );
  }
}
