import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            top: animate ? 0:-30,
            left:  animate ? 0:-30,
            child: Container(
              height: 70,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(60),bottomRight: Radius.circular(60))
              ),
            ),),

          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            top: 80,
              left: animate?10:-50,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: animate ?1:0,
                child: Column(
                  children: [
                    Text('Secure for all',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                    SizedBox(height: 20,),
                    Text('Bills,utilities and airtime available',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 15,),
                    Text('We got you all ways \n Fast & Reliable services.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 14),),
                  ],
                ),
              ),),
          
          AnimatedPositioned(
            duration: Duration(milliseconds: 2400),
            left: 15,
            bottom: animate ?MediaQuery.of(context).size.height*0.35 : 0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity: animate ?1:0,
                child: Image.asset('images/intro_image.png'),
              ),
          ),

          AnimatedPositioned(
            duration: Duration(milliseconds: 2400),
            bottom: animate ? 60 : 0,
            right: 20,
            child:  Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)
            ),
          ),)
        ],
      ),
    )
    );
  }

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      animate = true;
    });

    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HOMESCREEN()));
  }
}
