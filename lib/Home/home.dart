import 'package:church/Home/women_breakfast_metting.dart';
import 'package:flutter/material.dart';
import 'package:flexi_image_slider/flexi_image_slider.dart';


class MyAppHomePage extends StatefulWidget {
  const MyAppHomePage({super.key});

  @override
  State<MyAppHomePage> createState() => _MyAppHomePageState();
}
List<String> arrayImages = [
  "https://images.unsplash.com/photo-1717853412812-25005a3d973a?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1519491050282-cf00c82424b4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2h1cmNofGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1478147427282-58a87a120781?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y2h1cmNofGVufDB8fDB8fHww"
];

class _MyAppHomePageState extends State<MyAppHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Home' , style: TextStyle(fontFamily: 'Inter-b' , fontSize: 20),)),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.5), // Adjust the height as needed
              child: Container(
                color: Colors.black, // Change the color of the line as needed
                height: 0.5, // Adjust the height of the line
              ),
            ),
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Row(
                //   children: [
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Image(
                //       image: AssetImage('assets/images/User-Icon.png'),
                //       width: 45,
                //     ),
                //     Spacer(),
                //     Image(image: AssetImage('assets/images/Group.png')),
                //     SizedBox(
                //       width: 20,
                //     ),
                //   ],
                // ),
                //  const SizedBox(
                //   height: 30,
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //  const Text(
                    //   'Welcome User',
                    //   style: TextStyle(fontSize: 30, fontFamily: 'Inter-b'),
                    // ),
                    //  const SizedBox(
                    //   height: 15,
                    // ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     prefixIcon:  const Icon(Icons.search),
                    //     fillColor:  const Color(0xffF8F9FA),
                    //     filled: true,
                    //     enabledBorder: OutlineInputBorder(
                    //         borderSide:
                    //              const BorderSide(color: Color(0xffA5C2DE)),
                    //         borderRadius: BorderRadius.circular(15)),
                    //     focusedBorder: OutlineInputBorder(
                    //         borderSide:
                    //              const BorderSide(color: Color(0xffA5C2DE)),
                    //         borderRadius: BorderRadius.circular(15)),
                    //   ),
                    // ),
                    flexi_image_slider(
                      context: context,
                      aspectRatio: 16 / 9,
                      arrayImages: arrayImages,
                      autoScroll: true,
                      viewportFraction: 1.0,
                      boxFit: BoxFit.cover,
                      indicatorPosition: IndicatorPosition.overImage,
                      indicatorAlignment: IndicatorAlignment.center,
                      duration: const Duration(seconds: 4),
                      indicatorActiveColor: Colors.blue,
                      indicatorDeactiveColor: Colors.grey,
                      borderRadius: 0,
                      onTap: (int index) {
                        print("$index index clicked");
                        // Handle onTap event if needed
                      },
                    ),

                    Padding(
                       padding:  const EdgeInsets.only(left: 15, right: 20),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const SizedBox(
                             height: 15,
                           ),
                           const Text(
                             'Featured',
                             style: TextStyle(
                                 fontFamily: 'Inter-b',
                                 fontSize: 24,
                                 color: Color(0xff000000)),
                           ),
                           const SizedBox(
                             height: 10,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               GestureDetector(
                                 onTap: (){
                                   Navigator.push(
                                     context,
                                     PageRouteBuilder(
                                       transitionDuration: const Duration(milliseconds: 500),
                                       pageBuilder: (context, animation, secondaryAnimation) => const WomenBreakFastMetting(),
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
                                   height: 247,
                                   width: 164,
                                   decoration:  const BoxDecoration(
                                     image: DecorationImage(
                                       image: AssetImage('assets/images/main.png'),
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                   child:  const Padding(
                                     padding: EdgeInsets.all(10.0),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text(
                                           'Sermons',
                                           style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 24,
                                               fontFamily: 'Inter-b'),
                                         ),
                                         Spacer(),
                                         Image(
                                             image:
                                             AssetImage('assets/images/play.png')),
                                         SizedBox(
                                           height: 05,
                                         ),
                                         Text(
                                           'Watch Here',
                                           style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 12,
                                               fontFamily: 'Inter'),
                                         ),
                                         SizedBox(
                                           height: 06,
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                              const Spacer(),
                               Column(
                                 children: [
                                   Container(
                                     height: 113,
                                     width: 180,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(15),
                                       image: const DecorationImage(
                                         image: AssetImage(
                                             'assets/images/Image(1).png'),
                                         fit: BoxFit.cover,
                                       ),
                                     ),
                                     child:  const Padding(
                                       padding: EdgeInsets.all(10.0),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment:
                                         CrossAxisAlignment.start,
                                         children: [
                                           Text(
                                             'Prayer Request',
                                             style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 18,
                                                 fontFamily: 'Inter-b'),
                                           ),
                                           Spacer(),
                                           Text(
                                             "Let's Pray Together ",
                                             style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 12,
                                                 fontFamily: 'Inter'),
                                           ),
                                           SizedBox(
                                             height: 06,
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                   const SizedBox(
                                     height: 20,
                                   ),
                                   Container(
                                     height: 113,
                                     width: 180,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(15),
                                       image: const DecorationImage(
                                         image: AssetImage(
                                             'assets/images/Image(2).png'),
                                         fit: BoxFit.cover,
                                       ),
                                     ),
                                     child:  const Padding(
                                       padding: EdgeInsets.all(10.0),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment:
                                         CrossAxisAlignment.start,
                                         children: [
                                           Text(
                                             'Get Connected',
                                             style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 18,
                                                 fontFamily: 'Inter-b'),
                                           ),
                                           Spacer(),
                                           Text(
                                             "Join Us",
                                             style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 12,
                                                 fontFamily: 'Inter'),
                                           ),
                                           SizedBox(
                                             height: 06,
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                 ],
                               )
                             ],
                           ),
                           const SizedBox(
                             height: 15,
                           ),
                           const Text(
                             'Upcoming Events',
                             style: TextStyle(
                                 fontFamily: 'Inter-b',
                                 fontSize: 24,
                                 color: Color(0xff000000)),
                           ),
                           const SizedBox(
                             height: 10,
                           ),
                           Column(
                             children: [
                               GestureDetector(
                                 onTap: () {
                                   Navigator.push(
                                     context,
                                     PageRouteBuilder(
                                       transitionDuration: const Duration(milliseconds: 500),
                                       pageBuilder: (context, animation, secondaryAnimation) => const WomenBreakFastMetting(),
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
                                   height: 203,
                                   decoration: BoxDecoration(
                                     image: const DecorationImage(
                                         image:
                                         AssetImage('assets/images/Image(3).png'),
                                         fit: BoxFit.cover),
                                     borderRadius: BorderRadius.circular(10)
                                   ),
                                   child:  const Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Text(
                                         "WOMEN'S BREAKFAST\nMEETING",
                                         textAlign: TextAlign.center,
                                         style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 26,
                                             fontFamily: 'Inter-b'),
                                       ),
                                       Text(
                                         "FEBRUARY 24TH",
                                         textAlign: TextAlign.center,
                                         style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 24,
                                             fontFamily: 'Inter-E',
                                             fontWeight: FontWeight.w700),
                                       ),
                                       Text(
                                         "10:00 AM",
                                         textAlign: TextAlign.center,
                                         style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 16,
                                             fontFamily: 'Inter-b'),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               const SizedBox(
                                 height: 10,
                               ),
                               Container(
                                 width: MediaQuery.of(context).size.width,
                                 height: 203,
                                 decoration:  BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                     image: const DecorationImage(
                                         image: AssetImage(
                                             'assets/images/Image(5).png'))),
                                 child: const Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Text(
                                       "POIMA BOOK\nCLUB NIGHT",
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 26,
                                           fontFamily: 'Inter-b'),
                                     ),
                                     Text(
                                       "MARCH 14TH",
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 18,
                                           fontFamily: 'Inter-Medium'),
                                     ),
                                   ],
                                 ),
                               ),
                               const SizedBox(
                                 height: 10,
                               ),
                               Container(
                                 width: MediaQuery.of(context).size.width,
                                 height: 203,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                     image: const DecorationImage(
                                         image: AssetImage(
                                             'assets/images/Image(4).png'))),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     RichText(
                                       textAlign: TextAlign.center,
                                       text: const TextSpan(
                                         children: [
                                           TextSpan(
                                             text: "MEET ME\n",
                                             style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 26,
                                                 fontFamily: 'Inter-b'),
                                           ),
                                           TextSpan(
                                             text: "at\n",
                                             style: TextStyle(
                                                 color: Color(0xffA5C2DE),
                                                 fontSize: 56,
                                                 fontFamily: 'Romanesco-Regular',
                                                 height: 0.6),
                                           ),
                                           TextSpan(
                                             text: "THE ALTER",
                                             style: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 26,
                                                 fontFamily: 'Inter-b'),
                                           ),
                                         ],
                                       ),
                                     ),
                                     const SizedBox(
                                       height: 07,
                                     ),
                                     const Text(
                                       "MARCH 14TH",
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 18,
                                           fontFamily: 'Inter-Medium'),
                                     ),
                                   ],
                                 ),
                               ),
                             ],
                           )
                         ],
                       ),
                     ),

                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
