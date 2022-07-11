import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oracle_digital_app/src/app_constants/assets/app_assets.dart';

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
                AppAssets.google,
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
                AppAssets.facebook,
              )),
        ),
      ],
    );
  }
}
