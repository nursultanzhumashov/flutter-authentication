import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FecebookGoogleCard extends StatelessWidget {
  const FecebookGoogleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff9CB1D0),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/vectors/icon_sign_in/icon_google.svg',
              )),
        ),
        const SizedBox(width: 60),
        Card(
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff9CB1D0),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/vectors/icon_sign_in/icon_facebook.svg',
              )),
        ),
      ],
    );
  }
}
