import 'package:flutter/material.dart';

import '../widgets/money_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          children: [
            //App bar
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('User Profile',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            
            //user icon
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                 width: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.blue,
                   image: DecorationImage(image: AssetImage('images/wallet.png'),fit: BoxFit.cover),
                 ),

                )
              ],
            ),

            //money container
            SizedBox(height: 20,),
            MoneyContainer(balance: '25,251.51', tokensPoints: '25445',),

            //user details display
            SizedBox(height: 25,),
            Text('User details',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width/0.5,
              padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
              margin: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade400,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name:',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Text('Ikenna Collins Obetta',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Email:',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Text('Obettaikena19@gmail.com',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Phone Number:',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Text('07011187220',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 30,),

            //contact us
            Text('Contact Support',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.email_outlined,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text('piggybankNig@gmail.com',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.phone,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text('+234122548555',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.facebook,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text('piggyybank@facebook',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.whatsapp,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text('+234555113663',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),

                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.share,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text('Share with friends',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
