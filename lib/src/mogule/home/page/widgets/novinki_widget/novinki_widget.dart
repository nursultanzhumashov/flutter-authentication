import 'package:flutter/material.dart';
import 'package:oracle_digital_app/src/app_constants/app_texts/app_texts.dart';
import 'package:oracle_digital_app/src/mogule/home/page/widgets/keshber_widget/keshbek_widget.dart';

class NovinkiWidget extends StatelessWidget {
  const NovinkiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            SizedBox(width: 14),
            Text(
              AppTexts.novinki,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 13),
            Icon(
              Icons.local_fire_department,
              color: Colors.red,
            ),
            SizedBox(width: 219),
            InkWell(
              child: Text(
                AppTexts.vse,
                style: TextStyle(fontSize: 12, color: Color(0xff8D8D8D)),
              ),
            )
          ],
        ),
        const SizedBox(height: 9),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SizedBox(width: 14),
              KeshbekCard(
                  path:
                      'https://avatars.mds.yandex.net/i?id=234eb9b3e6b6f841034ebf5186d39a0e_sr-4843912-images-thumbs&n=13'),
              SizedBox(width: 8),
              KeshbekCard(
                  path:
                      'https://avatars.mds.yandex.net/i?id=234eb9b3e6b6f841034ebf5186d39a0e_sr-4843912-images-thumbs&n=13'),
              SizedBox(width: 18),
            ],
          ),
        ),
      ],
    );
  }
}

class NovinkiCard extends StatelessWidget {
  const NovinkiCard({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            path,
            width: 200,
            height: 85,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: const [
            SizedBox(width: 3),
            Icon(Icons.star_border, size: 20),
            Icon(Icons.star_outline, size: 20),
            Icon(Icons.star_outline, size: 20),
            Icon(Icons.star_outline, size: 20),
            Icon(Icons.star_outline, size: 20),
            Text('5.0'),
            Text('( 193 отзыва)')
          ],
        ),
        const Text('Nike'),
        const Text('Кино и театр'),
      ],
    );
  }
}
