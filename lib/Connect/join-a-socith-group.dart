import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JoinASocithGroup extends StatelessWidget {
  const JoinASocithGroup({super.key});

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
                    image: AssetImage('assets/images/group(3).png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        'JOIN A SOCITH\nGROUP',
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontFamily: "Inter-b"),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Soteria Church in The Home',
                            style: TextStyle(color: Colors.white),
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
                  children: [
                    const Text("SOCITH - Soteria Church in The Home" , style: TextStyle(fontFamily: 'Inter' , ),),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Do you want to be a part of the family and join us\nall the way to the home every Wednesday at\n7:00PM ?" , style: TextStyle(fontFamily: 'Inter' , ),),
                    const SizedBox(
                      height: 15,
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
                    const Text('Address' , style: TextStyle(fontFamily: 'Inter-bold' , fontSize: 16),),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 35),
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
