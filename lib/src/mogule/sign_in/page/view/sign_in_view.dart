import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oracle_digital_app/src/mogule/home/page/view/home_view/home_view.dart';

import 'package:oracle_digital_app/src/mogule/sign_up/page/view/sign_up_page.dart';
import 'package:oracle_digital_app/src/widgets/aut_card_fecebook_google/fecebook_google_card.dart';
import 'package:oracle_digital_app/src/widgets/password_form_field/password_form_field.dart';
import 'package:oracle_digital_app/src/widgets/phone_form_field/phone_form_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    super.key,
    required this.formKey,
    required this.pass,
    required this.phone,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController pass;
  final TextEditingController phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Form(
            key: formKey,
            child: Column(children: [
              const SizedBox(height: 110),
              Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                      'assets/vectors/icon_sign_in/icon_logo.svg')),
              const SizedBox(height: 54),
              const Text(
                'Войти через социальные сети',
                style: TextStyle(fontSize: 18, color: Color(0xff515151)),
              ),
              const SizedBox(
                height: 25,
              ),
              const FecebookGoogleCard(),
              const SizedBox(
                height: 43,
              ),
              PhoneFormField(
                phone: phone,
                path: 'assets/vectors/icon_sign_in/icon_phone.svg',
                hinText: 'Номер',
              ),
              const SizedBox(height: 15),
              const PasswordFormField(
                hintText: 'Пароль',
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 153,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeView()), //HomeView
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                  ),
                  child: const Text('Войти'),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                text: TextSpan(
                    text: 'Не можете войти?',
                    style: const TextStyle(color: Color(0xff225196)),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
              ),
              const SizedBox(height: 99),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Зарегистрироваться',
                    style: const TextStyle(color: Color(0xff225196)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                  ),
                ]),
              ),
              const SizedBox(height: 30),
            ]),
          ),
        ),
      ),
    );
  }
}
