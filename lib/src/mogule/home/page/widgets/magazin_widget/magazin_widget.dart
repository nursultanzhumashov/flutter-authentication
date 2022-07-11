import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oracle_digital_app/src/app_constants/app_texts/app_texts.dart';
import 'package:oracle_digital_app/src/app_constants/assets/app_assets.dart';

class MagazinWidget extends StatelessWidget {
  const MagazinWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            SizedBox(width: 14),
            Text(
              AppTexts.magazin,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 241),
            InkWell(
              child: Text(
                AppTexts.vse,
                style: TextStyle(fontSize: 12, color: Color(0xff8D8D8D)),
              ),
            )
          ],
        ),
        const SizedBox(height: 14),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SizedBox(width: 18),
              MagazinCard(
                path: AppAssets.apple,
              ),
              SizedBox(width: 18),
              MagazinCard(
                path: AppAssets.apple,
              ),
              SizedBox(width: 18),
              MagazinCard(
                path: AppAssets.apple,
              ),
              SizedBox(width: 18),
              MagazinCard(
                path: AppAssets.apple,
              ),
              SizedBox(width: 18),
              MagazinCard(
                path: AppAssets.apple,
              ),
              SizedBox(width: 18),
              MagazinCard(
                path: AppAssets.apple,
              ),
              SizedBox(width: 18),
              MagazinCard(
                path: AppAssets.apple,
              ),
              SizedBox(width: 18),
              MagazinCard(
                path: AppAssets.apple,
              ),
              SizedBox(width: 18),
            ],
          ),
        ),
      ],
    );
  }
}

class MagazinCard extends StatelessWidget {
  const MagazinCard({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const SizedBox(height: 10),
          SvgPicture.asset(
            path,
            width: 32,
            height: 32,
          ),
          const SizedBox(height: 5),
          Row(
            children: const [
              SizedBox(width: 8),
              Icon(Icons.star_border, size: 12),
              Icon(Icons.star_border, size: 12),
              Icon(Icons.star_border, size: 12),
              Icon(Icons.star_border, size: 12),
              Icon(Icons.star_border, size: 12),
              Text(
                '5.0',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 11),
          const Text(
            'Si Boutique',
            style: TextStyle(fontSize: 12),
          ),
          const Text(
            'Одежда и обувь',
            style: TextStyle(fontSize: 10),
          ),
          const SizedBox(
            height: 17,
          )
        ],
      ),
    );
  }
}
