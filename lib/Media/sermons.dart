import 'package:church/Media/trusting_the_word_of_god.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySermonsPage extends StatelessWidget {
  const MySermonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Sermons',
            style: TextStyle(fontFamily: 'Inter-b', fontSize: 19),
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/lets-icons_back.svg'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) => const TrustingTheWordOfGod(),
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
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/sermon(3).png'))),
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trusting the Word Of God',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter-Bold',
                                fontSize: 24),
                          ),
                          Text(
                            'Pst John Doe',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontSize: 20),
                          ),
                          Text(
                            '12-09-2023',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter-E',
                                fontStyle: FontStyle.italic,
                                fontSize: 18),
                          ),
                          Spacer(),
                          Image(image: AssetImage('assets/images/play.png')),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Watch Here',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 210,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sermon(5).png'))),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Always Living By Faith',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter-Bold',
                              fontSize: 24),
                        ),
                        Text(
                          'Pst Jane Random',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 20),
                        ),
                        Text(
                          '12-09-2023',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter-E',
                              fontStyle: FontStyle.italic,
                              fontSize: 18),
                        ),
                        Spacer(),
                        Image(image: AssetImage('assets/images/play.png')),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Watch Here',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 208,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sermon(4).png'))),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TKnowing God',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter-Bold',
                              fontSize: 24),
                        ),
                        Text(
                          'Pst Jeffery Something',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 20),
                        ),
                        Text(
                          '12-09-2023',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter-E',
                              fontStyle: FontStyle.italic,
                              fontSize: 18),
                        ),
                        Spacer(),
                        Image(image: AssetImage('assets/images/play.png')),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Watch Here',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
