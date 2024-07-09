import 'package:church/Connect/connect.dart';
import 'package:church/Home/home.dart';
import 'package:church/Media/media.dart';
import 'package:church/More/more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int index = 0;

  final List screens = [
    const MyAppHomePage(),
    const MyConnectPage(),
    const MyAppHomePage(),
    const MyMediaPage(),
    const MyMorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[index],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(
            top: BorderSide(
              color: Color(0xffa96f00), // Choose your border color
              width: 2, // Choose your border width
            ),
          )),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xffA96F00),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.black,
            currentIndex: index,
            onTap: (int idx) {
              setState(() {
                index = idx;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/home.svg'),
                label: 'Home',
                activeIcon: SvgPicture.asset('assets/icons/home-selected.svg'),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Vector.svg'),
                label: 'Connect',
                activeIcon:
                    SvgPicture.asset('assets/icons/vector-selected.svg'),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/gift.svg'),
                label: 'Give',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/carbon_play-outline.svg'),
                label: 'Media',
                activeIcon:
                    SvgPicture.asset('assets/icons/carbon_play-filled.svg'),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Group.svg'),
                label: 'More',
                activeIcon: SvgPicture.asset('assets/icons/group-selected.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
