import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oracle_digital_app/src/app_constants/app_texts/app_texts.dart';
import 'package:oracle_digital_app/src/app_constants/assets/app_assets.dart';

class KategiriWidget extends StatelessWidget {
  const KategiriWidget({
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
              AppTexts.kategiri,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 245),
            InkWell(
              child: Text(
                AppTexts.vse,
                style: TextStyle(fontSize: 12, color: Color(0xff8D8D8D)),
              ),
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.aktivOtdyh),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.aktivOtdyh)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.kinoTeatr),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.kinoTeatr)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.kafeRestaron),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.kafeRestaron)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.dlyaDetei),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.dlyaDetei)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.igrovKluby),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.igrovKluby)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.saynyBanyaOteli),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.saynyBanyaOteli)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.apteki),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.apteki)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.zoomagazin),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.zoomagazin)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.avtoUslugiTovary),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.avtoUslugiTovary)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.kosmetika),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.kosmetika)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.optika),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.optika)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.aksesuaru),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.aksesuaru)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.tovaryDoma),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.tovaryDoma)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.uvelernyeIzdelie),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.uvelernyeIzdelie)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.krasotaZdarove),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.krasotaZdarove)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.spaKosmetolog),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.spaKosmetolog)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.himchistka),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.himchistka)
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(path: AppAssets.drugoe),
                SizedBox(height: 13),
                KategoriText(title: AppTexts.drugoe)
              ]),
              const SizedBox(width: 14),
            ],
          ),
        ),
      ],
    );
  }
}

class KategoriText extends StatelessWidget {
  const KategoriText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title));
  }
}

class KategoriIcon extends StatelessWidget {
  const KategoriIcon({
    Key? key,
    required this.path,
  }) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: Container(
          height: 80,
          width: 82,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: SvgPicture.asset(
              path,
              height: 22,
              width: 22,
            ),
          )),
    );
  }
}
