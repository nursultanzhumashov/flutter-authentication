import 'package:flutter/material.dart';
import 'package:oracle_digital_app/src/app_constants/app_texts/app_texts.dart';

class KeshbekWidget extends StatelessWidget {
  const KeshbekWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: const [
        SizedBox(width: 14),
        Text(
          AppTexts.gorKeshbek,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(width: 11),
        Icon(
          Icons.local_fire_department,
          color: Colors.red,
        ),
        SizedBox(width: 159),
        InkWell(
          child: Text(
            AppTexts.vse,
            style: TextStyle(fontSize: 12, color: Color(0xff8D8D8D)),
          ),
        )
      ]),
      const SizedBox(height: 10),
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
    ]);
  }
}

class KeshbekCard extends StatelessWidget {
  const KeshbekCard({
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
        const Text('  Walmart'),
        const Text('  Fast food'),
      ],
    );
  }
}
