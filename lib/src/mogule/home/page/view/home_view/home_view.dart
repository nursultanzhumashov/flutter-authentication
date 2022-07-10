import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oracle_digital_app/src/mogule/home/page/view/draiwr_page/drawer_screen.dart';
import 'package:oracle_digital_app/src/mogule/home/page/widgets/kategiri_widget/kategiri_widget.dart';
import 'package:oracle_digital_app/src/mogule/home/page/widgets/keshber_widget/keshbek_widget.dart';
import 'package:oracle_digital_app/src/mogule/home/page/widgets/magazin_widget/magazin_widget.dart';
import 'package:oracle_digital_app/src/mogule/home/page/widgets/novinki_widget/novinki_widget.dart';
import 'package:oracle_digital_app/src/mogule/home/page/widgets/skidka_widget/skidka_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: iconSearch(),
      drawer: iconDrawer(),
      body: userColumn(),
      floatingActionButton: floatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomAppbar(),
    );
  }

  AppBar iconSearch() {
    return AppBar(
      toolbarHeight: 30,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            size: 27,
            color: Color(0xff225196),
          ),
          onPressed: () {},
        ),
      ],
      iconTheme: const IconThemeData(color: Color(0xff225196)),
    );
  }

  Drawer iconDrawer() {
    return const Drawer(
      backgroundColor: Colors.white,
      width: 360,
      child: DrawerPage(),
    );
  }

  SingleChildScrollView userColumn() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 5),
          Column(
            children: [
              const SizedBox(width: 19),
              Row(
                children: [
                  const SizedBox(width: 18),
                  Align(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://avatars.mds.yandex.net/i?id=2b415eff2af9b5ca1390e2c560601b9c-5232446-images-thumbs&n=13',
                        height: 60,
                        width: 60,
                        //'https://picsum.photos/200/300',

                        fit: BoxFit.cover,
                      ),
                      // SvgPicture.asset(
                      //   'assets/images/image_home_page.svg',
                      // ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  const Text(
                    'Акиева Айпери',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 47),
                  InkWell(
                    child: const Card(
                        color: Color(0xffFF6B00),
                        child: SizedBox(
                          width: 78,
                          height: 38,
                          child: Center(
                              child: Text(
                            '1520 сом',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )),
                        )),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 26),
          const SkidkaWidget(),
          const SizedBox(height: 14),
          const KategiriWidget(),
          const SizedBox(height: 34),
          const KeshbekWidget(),
          const SizedBox(height: 34),
          const NovinkiWidget(),
          const SizedBox(height: 34),
          const SizedBox(height: 22),
          const MagazinWidget(),
          const SizedBox(height: 34),
        ],
      ),
    );
  }

  FloatingActionButton floatingButton() {
    return FloatingActionButton(
      backgroundColor: const Color(0xffFF6B00),
      onPressed: () {},
      child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/vectors/icon_botton/botton5.svg')),
    );
  }

  BottomAppBar bottomAppbar() {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/vectors/icon_botton/botton1.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/vectors/icon_botton/botton2.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/vectors/icon_botton/botton3.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/vectors/icon_botton/botton4.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
