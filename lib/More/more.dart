import 'dart:math';

import 'package:flutter/material.dart';

class MyMorePage extends StatefulWidget {
  const MyMorePage({super.key});

  @override
  State<MyMorePage> createState() => _MyMorePageState();
}

class _MyMorePageState extends State<MyMorePage> {
  int x = 0;
  Random random = Random();
  bool _switchValue = true;
  bool _darkModeValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _darkModeValue == false ? Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Center(
                  child: Image(image: AssetImage('assets/images/profile.png'))),
              const Text(
                "Jane Doe",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'RobotoSlab-Bold',
                    fontWeight: FontWeight.w800),
              ),
              const Text(
                "janedoe@gmail.com",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'RobotoSlab-Regular',
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 06,
              ),
              Container(
                height: 45,
                width: 163,
                decoration: BoxDecoration(
                    color: const Color(0xffA96F00),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 319,
                height: 387,
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 05,
                  )
                ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'OPTIONS',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoSlab-SemiBold',
                            color: Color(0xffA96F00)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icons/more (2).png')),
                          const Spacer(),
                          const Text(
                            'Notifications',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          Transform.scale(
                            scale: 0.8, // Adjust scale as needed (0.0 - 1.0)
                            child: Switch(
                              value: _switchValue,
                              onChanged: (bool newValue) {
                                setState(() {
                                  _switchValue = newValue;
                                  // Handle state change logic here
                                });
                              },
                              activeTrackColor: const Color(0xffA96F00),

                              activeColor: Colors.white,
                              inactiveThumbColor: const Color(0xffA96F00),
                              inactiveTrackColor:
                              Colors.white, // Example inactive thumb color
                              materialTapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icons/more (1).png')),
                          const Spacer(),
                          const Text(
                            'Dark mode',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          Transform.scale(
                            scale: 0.8, // Adjust scale as needed (0.0 - 1.0)
                            child: Switch(
                              value: _darkModeValue,
                              onChanged: (bool newValue) {
                                setState(() {
                                  print(x.toString());
                                  x = random.nextInt(2);
                                  _darkModeValue = newValue;
                                  // Handle state change logic here
                                });
                              },
                              activeTrackColor: const Color(0xffA96F00),
          
                              activeColor: Colors.white,
                              inactiveThumbColor: const Color(0xffA96F00),
                              inactiveTrackColor:
                                  Colors.white, // Example inactive thumb color
                              materialTapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // Reduce tap target size
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'SUPPORT',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoSlab-SemiBold',
                            color: Color(0xffA96F00)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Image(image: AssetImage('assets/icons/more (3).png')),
                          Spacer(),
                          Text(
                            'FAQ',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Image(image: AssetImage('assets/icons/more (5).png')),
                          Spacer(),
                          Text(
                            'Help',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        thickness: 2,
                        endIndent: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Image(image: AssetImage('assets/icons/more (4).png')),
                          Spacer(),
                          Text(
                            'LogOut',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ) : Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Center(
                  child: Image(image: AssetImage('assets/images/profile.png'))),
              const Text(
                "Jane Doe",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'RobotoSlab-Bold',
                    fontWeight: FontWeight.w800,
                color: Colors.white),
              ),
              const Text(
                "janedoe@gmail.com",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'RobotoSlab-Regular',
                    fontWeight: FontWeight.w400 , color: Colors.white),
              ),
              const SizedBox(
                height: 06,
              ),
              Container(
                height: 45,
                width: 163,
                decoration: BoxDecoration(
                    color: const Color(0xffA96F00),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 319,
                height: 387,
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 05,
                  )
                ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'OPTIONS',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoSlab-SemiBold',
                            color: Color(0xffA96F00)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icons/more (2).png')),
                          const Spacer(),
                          const Text(
                            'Notifications',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          Transform.scale(
                            scale: 0.8, // Adjust scale as needed (0.0 - 1.0)
                            child: Switch(
                              value: _switchValue,
                              onChanged: (bool newValue) {
                                setState(() {
                                  _switchValue = newValue;
                                  // Handle state change logic here
                                });
                              },
                              activeTrackColor: const Color(0xffA96F00),

                              activeColor: Colors.white,
                              inactiveThumbColor: const Color(0xffA96F00),
                              inactiveTrackColor:
                              Colors.white, // Example inactive thumb color
                              materialTapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icons/more (1).png')),
                          const Spacer(),
                          const Text(
                            'Dark mode',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          Transform.scale(
                            scale: 0.8, // Adjust scale as needed (0.0 - 1.0)
                            child: Switch(
                              value: _darkModeValue,
                              onChanged: (bool newValue) {
                                setState(() {
                                  print(x.toString());
                                  x = random.nextInt(2);
                                  _darkModeValue = newValue;
                                  // Handle state change logic here
                                });
                              },
                              activeTrackColor: const Color(0xffA96F00),

                              activeColor: Colors.white,
                              inactiveThumbColor: const Color(0xffA96F00),
                              inactiveTrackColor:
                              Colors.white, // Example inactive thumb color
                              materialTapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // Reduce tap target size
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'SUPPORT',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoSlab-SemiBold',
                            color: Color(0xffA96F00)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Image(image: AssetImage('assets/icons/more (3).png')),
                          Spacer(),
                          Text(
                            'FAQ',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Image(image: AssetImage('assets/icons/more (5).png')),
                          Spacer(),
                          Text(
                            'Help',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        thickness: 2,
                        endIndent: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Image(image: AssetImage('assets/icons/more (4).png')),
                          Spacer(),
                          Text(
                            'LogOut',
                            style: TextStyle(
                                fontFamily: 'RobotoSlab-SemiBold', fontSize: 16),
                          ),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
