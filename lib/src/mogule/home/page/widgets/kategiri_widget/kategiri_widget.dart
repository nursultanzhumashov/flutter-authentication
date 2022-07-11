import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oracle_digital_app/src/app_constants/app_texts/app_texts.dart';

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
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori1.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Активный отдых')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori2.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Кино и театры')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori3.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Кафе и рестораны')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori4.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Для детей')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori5.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Игровые клубы')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori6.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Сауны, бани и отели')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori7.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Аптеки')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori8.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Зоомагазины')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori9.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Автоуслуги и товары')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori10.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Косметика и парфюмерия')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori11.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Оптика')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori12.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Аксессуары')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori13.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Товары для дома')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori14.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Ювелирные изделия')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori15.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Красота и здровье')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori6.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'SPA и косметология')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori17.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Химчистка')
              ]),
              const SizedBox(width: 14),
              Column(children: const [
                KategoriIcon(
                    path: 'assets/vectors/icon_kategori/icon_kategori18.svg'),
                SizedBox(height: 13),
                KategoriText(title: 'Другое')
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
