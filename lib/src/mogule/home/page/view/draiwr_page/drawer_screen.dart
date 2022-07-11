import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oracle_digital_app/src/app_constants/app_texts/app_texts.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/page/view/sign_in_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // padding: EdgeInsets.zero,
      children: [
        Column(
          children: [
            Row(children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ]),
            Row(
              children: [
                const SizedBox(width: 20),
                Align(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:
                        // SvgPicture.asset('assets/images/image_home_page.svg'),
                        Image.network(
                      'https://avatars.mds.yandex.net/i?id=2b415eff2af9b5ca1390e2c560601b9c-5232446-images-thumbs&n=13',
                      height: 60,
                      width: 60,
                      //'https://picsum.photos/200/300',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 13),
                Column(
                  children: const [
                    Text(
                      'Акиева Айпери',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'id123456789      ',
                      style: TextStyle(
                        color: Color(0xff8D8D8D),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 21),
            const ContainerHeight1(),
            const SizedBox(height: 42),
            const RowCenter(
                path: 'assets/vectors/icon_drawer/icon_driwer1.svg',
                title: AppTexts.kategiri),
            const SizedBox(height: 14),
            const ContainerHeight1(),
            const SizedBox(height: 14),
            const RowCenter(
              path: 'assets/vectors/icon_drawer/icon_driwer2.svg',
              title: AppTexts.uvedomleni,
            ),
            const SizedBox(height: 14),
            const ContainerHeight1(),
            const SizedBox(height: 14),
            const RowCenter(
              path: 'assets/vectors/icon_drawer/icon_driwer3.svg',
              title: AppTexts.gorKeshbek,
            ),
            const SizedBox(height: 14),
            const ContainerHeight1(),
            const SizedBox(height: 14),
            const RowCenter(
              path: 'assets/vectors/icon_drawer/icon_driwer4.svg',
              title: AppTexts.partProgramma,
            ),
            const SizedBox(height: 14),
            const ContainerHeight1(),
            const SizedBox(height: 14),
            const RowCenter(
              path: 'assets/vectors/icon_drawer/icon_driwer5.svg',
              title: AppTexts.oProgramme,
            ),
            const SizedBox(height: 14),
            const ContainerHeight1(),
            const SizedBox(height: 14),
            const RowCenter(
              path: 'assets/vectors/icon_drawer/icon_driwer6.svg',
              title: AppTexts.faq,
            ),
            const SizedBox(height: 14),
            const ContainerHeight1(),
            const SizedBox(height: 14),
            const RowCenter(
              path: 'assets/vectors/icon_drawer/icon_driwer7.svg',
              title: AppTexts.nastroyki,
            ),
            const SizedBox(height: 14),
            const ContainerHeight1(),
            const SizedBox(height: 14),
            const RowCenter(
              path: 'assets/vectors/icon_drawer/icon_driwer8.svg',
              title: AppTexts.vyiti,
            ),
            Row(
              children: [
                const SizedBox(width: 61),
                SvgPicture.asset('assets/vectors/icon_drawer/icon_driwer8.svg'),
                const SizedBox(width: 29),
                InkWell(
                  child: const Text(
                    'Выйти',
                    style: TextStyle(fontSize: 16, color: Color(0xff515151)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(
                            // email: _email,
                            // formKey: _formKey,
                            // pass: _pass,
                            ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ContainerHeight1 extends StatelessWidget {
  const ContainerHeight1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 343,
      color: Color(0xffEBEBEB),
    );
  }
}

class RowCenter extends StatelessWidget {
  const RowCenter({
    Key? key,
    required this.path,
    required this.title,
  }) : super(key: key);
  final String path;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 61),
        SvgPicture.asset(path),
        const SizedBox(width: 29),
        InkWell(
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, color: Color(0xff515151)),
          ),
        ),
      ],
    );
  }
}
