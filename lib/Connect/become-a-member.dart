import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BecomeAMember extends StatelessWidget {
  const BecomeAMember({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Become A Member',
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
                    image: AssetImage('assets/images/group(4).png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'BECOME A MEMBER',
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Inter-b',
                      color: Colors.white,
                    ),
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
                  children: [
                    const Text("If you would like to become a member of Soteria church, we are happy to welcome you. " , style: TextStyle(fontFamily: 'Inter' , ),),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Please sign up here." , style: TextStyle(fontFamily: 'Inter' , ),),
                    const SizedBox(
                      height: 20,
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

                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
