import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkidkaWidget extends StatelessWidget {
  const SkidkaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff313131),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(children: [
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '''Кэшбэка много
не бывает''',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 2),
              Text(
                '''Летай сколько угодно,
получай за каждую покупку до 15%''',
                style: TextStyle(
                  color: Color(0xffC1C1C1),
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 31),
              Text(
                'До 30.12.2020',
                style: TextStyle(
                  color: Color(0xff808080),
                  fontSize: 10,
                ),
              ),
            ],
          ),
          // SvgPicture.asset(
          //   'assets/images/image_card.svg',
          // ),
        ]),
      ),
    );
  }
}
