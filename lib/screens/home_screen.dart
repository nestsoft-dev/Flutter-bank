import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:netsoft_flutterwave/screens/main_page.dart';
import 'package:netsoft_flutterwave/screens/profile_page.dart';
import 'package:netsoft_flutterwave/screens/virtual_card.dart';
import 'package:netsoft_flutterwave/screens/wallet_topup.dart';

import '../card_input/card_input.dart';
import '../widgets/money_container.dart';

class HOMESCREEN extends StatefulWidget {
  const HOMESCREEN({Key? key}) : super(key: key);

  @override
  State<HOMESCREEN> createState() => _HOMESCREENState();
}

class _HOMESCREENState extends State<HOMESCREEN> {

  int currentIndex = 0;
  List pages = [
    HomeMain(),
    CardInput(),
    VistualCard(),
    ProfilePage(),
  ];

  void onTap(int index){
setState(() {
  currentIndex = index;
});
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        height: 57,
          index: currentIndex ,
        onTap: onTap,
        backgroundColor: Colors.deepPurple,
          animationDuration: Duration(milliseconds: 500),
          color: Colors.deepPurple.shade300,
          items: [
        Icon(Icons.home,color: Colors.white,),
        Icon(Icons.monetization_on,color: Colors.white,),
        Icon(Icons.credit_card_rounded,color: Colors.white,),
        Icon(Icons.person,color: Colors.white,),
      ]),
      body:pages[currentIndex],
    );
  }
}
