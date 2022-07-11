import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oracle_digital_app/src/app_constants/app_texts/app_texts.dart';
import 'package:oracle_digital_app/src/app_constants/assets/app_assets.dart';
import 'package:oracle_digital_app/src/mogule/home/page/view/home_view/home_view.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/page/view/sign_in_page.dart';
import 'package:oracle_digital_app/src/widgets/aut_card_fecebook_google/fecebook_google_card.dart';
import 'package:oracle_digital_app/src/widgets/password_form_field/password_form_field.dart';
import 'package:oracle_digital_app/src/widgets/phone_form_field/phone_form_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
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
                  child: SvgPicture.asset(AppAssets.logo)),
              const SizedBox(
                height: 54,
              ),
              const Text(
                AppTexts.socialNetworks,
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
                hinText: AppTexts.phoneSignUp,
              ),
              const SizedBox(height: 15),
              const PasswordFormField(
                hintText: AppTexts.passwordSignUp,
                //   formKey: formKey, email: email.text, pass: pass.text
              ),
              const SizedBox(height: 15),
              const PasswordFormField(
                hintText: AppTexts.passwordSignUp,
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
                  child: const Text(AppTexts.signUp),
                ),
              ),
              const SizedBox(height: 68),
              RichText(
                text: TextSpan(
                    text: AppTexts.signIn,
                    style: const TextStyle(color: Color(0xff225196)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
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
