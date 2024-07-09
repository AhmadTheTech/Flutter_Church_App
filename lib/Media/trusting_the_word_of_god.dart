import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrustingTheWordOfGod extends StatelessWidget {
  const TrustingTheWordOfGod({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Trusting The Word Of God',
            style: TextStyle(fontFamily: 'Inter-b', fontSize: 19),
            textAlign: TextAlign.center,
          ),
          leading:  IconButton(
            icon: SvgPicture.asset('assets/icons/lets-icons_back.svg'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),

        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 235,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/sermon-back.png'),
                        )
                      ),
                      child: const Center(child: Image(image: AssetImage('assets/images/play.png'), width: 200, height: 50,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Image(image: AssetImage('assets/icons/time-icons(2).png') , width: 29, height: 24,),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Trusting the Word Of God"  , style: TextStyle(fontSize: 24 , fontFamily: 'Inter-b' , height: 1),)
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              Image(image: AssetImage('assets/images/man.png') , width: 29, height: 29,),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Pst John Doe' , style: TextStyle(fontSize: 20 , fontFamily: 'Inter-b'),)
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Image(image: AssetImage('assets/icons/time-icons(1).png') , width: 29, height: 29,),
                              SizedBox(
                                width: 20,
                              ),
                              Text('12-09-2023' , style: TextStyle(fontSize: 19 , fontFamily: 'Inter'),)
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 04,
                            endIndent: 0,
                            color: Color(0xffBDC1C6),
                            indent: 0,
                          ),
                          const Text("When we walk with the lord we learn to trust his word. When we walk with the lord we learn to trust his word.When we walk with the lord we learn to trust his word.When we walk with the lord we learn to trust his word." , style: TextStyle(fontSize: 19 , fontFamily: 'Inter-Medium'), ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffA96F00)),
                            ),
                            child: const Center(child: Text("Leave Comment" , style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter-b',
                                color: Color(0xffA96F00)
                            ),)),
                          ),
                        ],
                      ),
                    ),
                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
