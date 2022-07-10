import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oracle_digital_app/src/mogule/home/page/view/home_view/home_view.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/page/view/sign_in_view.dart';
import 'package:oracle_digital_app/src/widgets/password_form_field/password_form_field.dart';

class SignUpView extends StatelessWidget {
  SignUpView({
    super.key,
    required this.formKey,
    required this.email,
    required this.phone,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController email;
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
              const SizedBox(
                width: 100,
              ),
              Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                      'assets/vectors/icon_sign_in/icon_logo.svg')),
              const SizedBox(
                height: 54,
              ),
              const Text(
                'Войти через социальные сети',
                style: TextStyle(fontSize: 18, color: Color(0xff515151)),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/vectors/icon_sign_in/icon_google.svg',
                        )),
                  ),
                  const SizedBox(width: 60),
                  Card(
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/vectors/icon_sign_in/icon_facebook.svg',
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 43,
              ),
              TextFormField(
                //controller: email,
                decoration: InputDecoration(
                  // prefixIcon: SvgPicture.asset(
                  //   'assets/vectors/icon_sign_in/icon_phone.svg',
                  // ),
                  hintText: 'Введите номер',
                  hintStyle: const TextStyle(
                    color: Color(0xff22519680),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const PasswordFormField(
                hintText: 'Введите пароль',
                //   formKey: formKey, email: email.text, pass: pass.text
              ),
              const SizedBox(height: 15),
              const PasswordFormField(
                hintText: 'Введите пароль',
                //   formKey: formKey, email: email.text, pass: pass.text
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 245,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeView()),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                  ),
                  child: const Text('Зарегистрироваться'),
                ),
              ),
              const SizedBox(height: 68),
              RichText(
                text: TextSpan(
                    text: 'Войти',
                    style: const TextStyle(color: Color(0xff225196)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInView(
                                    email: email,
                                    formKey: formKey,
                                    phone: phone,
                                  )),
                        );
                      }),
              ),
              const SizedBox(height: 99),
            ]),
          ),
        ),
      ),
    );
  }
}
