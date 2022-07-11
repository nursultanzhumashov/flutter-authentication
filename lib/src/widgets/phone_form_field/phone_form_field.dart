import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneFormField extends StatelessWidget {
  const PhoneFormField({
    Key? key,
    required this.phone,
    required this.hinText,
    required this.path,
    //   required TextEditingController email,
  }) : super(key: key);

  final TextEditingController phone;
  final String hinText;
  final String path;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff9CB1D0),
      style: const TextStyle(color: Color(0xff225196)),
      controller: phone,
      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset(
          path,
        ),
        hintText: hinText,
        hintStyle: const TextStyle(
          color: Color(0xff9CB1D0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color(0xff9CB1D0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color(0xff9CB1D0),
          ),
        ),
      ),
    );
  }
}
