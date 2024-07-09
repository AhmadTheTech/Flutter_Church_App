import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrayerRequests extends StatelessWidget {
  const PrayerRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Join A Socith Group',
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 211,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/group(2).png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'PRAYER',
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontFamily: "Sahitya-Regular",
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'REQUESTS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontFamily: 'Sahitya-Regular',
                            ),
                            textAlign: TextAlign.start,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("Hearts United in Prayer: Share Your Requests Here" , style: TextStyle(fontFamily: 'Inter-Regular' , fontSize: 32 ),),
                    const SizedBox(
                      height: 15,
                    ),

                    const Divider(
                      thickness: 2,
                      color: Color(0xffBDC1C6),
                      endIndent: 0,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('First Name' , style: TextStyle(fontFamily: 'Inter-bold' , fontSize: 16),),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Last Name' , style: TextStyle(fontFamily: 'Inter-bold' , fontSize: 16),),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Email' , style: TextStyle(fontFamily: 'Inter-bold' , fontSize: 16),),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Phone Number' , style: TextStyle(fontFamily: 'Inter-bold' , fontSize: 16),),
                    IntlPhoneField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      initialCountryCode: 'PK',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    const Text('Description of Your Prayer Requests' , style: TextStyle(fontFamily: 'Inter-bold' , fontSize: 16),),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 50),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffBDC1C6)),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffA96F00)),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(child: Text("Submit Now" , style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Inter-b',
                          color: Color(0xffA96F00)
                      ),)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
