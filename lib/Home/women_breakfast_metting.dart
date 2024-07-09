import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WomenBreakFastMetting extends StatelessWidget {
  const WomenBreakFastMetting({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Women’s Breakfast Meeting',
            style: TextStyle(fontFamily: 'Inter-b', fontSize: 16),
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
                    const Image(image: AssetImage('assets/images/event.png')),
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
                              Text("Women’s Breakfast\nMeeting"  , style: TextStyle(fontSize: 24 , fontFamily: 'Inter-b' , height: 1),)
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              Image(image: AssetImage('assets/icons/time-icons(1).png') , width: 29, height: 29,),
                              SizedBox(
                                width: 20,
                              ),
                              Text('12-09-2023' , style: TextStyle(fontSize: 18 , fontFamily: 'Inter' , fontStyle: FontStyle.italic),)
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Image(image: AssetImage('assets/icons/time-icons(3).png') , width: 20, height: 24,),
                              SizedBox(
                                width: 20,
                              ),
                              Text('10:00 AM' , style: TextStyle(fontSize: 24 , fontFamily: 'Inter'),)
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Theme: An Audience of One' , style: TextStyle(fontSize: 20 , fontFamily: 'Inter-bold'),),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 04,
                            endIndent: 0,
                            color: Color(0xffBDC1C6),
                            indent: 0,
                          ),
                          const Text("Join us for our Women's Breakfast Meeting—an inspiring morning of fellowship, encouragement, and empowerment. Enjoy a delicious breakfast as we gather to celebrate the strength and beauty of women in our community. All are welcome!" , style: TextStyle(fontSize: 19 , fontFamily: 'inter'), ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffA96F00)),
                            ),
                            child: const Center(child: Text("REGISTER" , style: TextStyle(
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
