import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oracle_digital_app/src/app_constants/assets/app_assets.dart';
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
            cursorColor: const Color(0xff9CB1D0),

            //  autofocus: state,
            style: const TextStyle(color: Color(0xff225196)),
            obscureText: state,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0xff9CB1D0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0xff9CB1D0)),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color(0xff9CB1D0),
              ),
              suffixIcon: IconButton(
                icon: Icon(state ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  context.read<FieldStateCubit>().change();
                },
              ),
              prefixIcon: SvgPicture.asset(
                AppAssets.lock,
              ),
            ),
          );
        },
      ),
    );
  }
}
