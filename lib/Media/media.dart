import 'package:church/Media/sermons.dart';
import 'package:flutter/material.dart';
import 'package:church/More/more.dart';
import 'dart:math';

class MyMediaPage extends StatefulWidget {
  const MyMediaPage({super.key});

  @override
  State<MyMediaPage> createState() => _MyMediaPageState();
}

class _MyMediaPageState extends State<MyMediaPage> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: x == 0 ? Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Media',
              style: TextStyle(fontFamily: 'Inter-b', fontSize: 20),
            ),
          ),
          bottom: PreferredSize(
            preferredSize:
                const Size.fromHeight(0.5), // Adjust the height as needed
            child: Container(
              color: Colors.black, // Change the color of the line as needed
              height: 0.5, // Adjust the height of the line
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sermon(3).png'),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 137,
                    height: 78,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/sermon(2).png'))),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder: (context, animation, secondaryAnimation) => const MySermonsPage(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 77.26,
                      width: 220,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Sermons',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Inter-b',
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Image(image: AssetImage('assets/icons/arrow.png')),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 137,
                    height: 78,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/sermon(1).png'))),
                  ),
                  Container(
                    height: 77.26,
                    width: 220,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Live Stream',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Inter-b',
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Image(image: AssetImage('assets/icons/arrow.png')),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) : Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Media',
              style: TextStyle(fontFamily: 'Inter-b', fontSize: 20 , color: Colors.white),
            ),
          ),
          bottom: PreferredSize(
            preferredSize:
            const Size.fromHeight(0.5), // Adjust the height as needed
            child: Container(
              color: Colors.black, // Change the color of the line as needed
              height: 0.5, // Adjust the height of the line
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sermon(3).png'),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 137,
                    height: 78,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/sermon(2).png'))),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder: (context, animation, secondaryAnimation) => const MySermonsPage(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 77.26,
                      width: 220,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Sermons',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Inter-b',
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Image(image: AssetImage('assets/icons/arrow.png')),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 137,
                    height: 78,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/sermon(1).png'))),
                  ),
                  Container(
                    height: 77.26,
                    width: 220,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Live Stream',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Inter-b',
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Image(image: AssetImage('assets/icons/arrow.png')),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
