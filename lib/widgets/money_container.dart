import 'package:flutter/material.dart';

class MoneyContainer extends StatelessWidget {
  String balance,tokensPoints;
   MoneyContainer({Key? key,required this.balance,required this.tokensPoints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      height: 150,
     decoration: BoxDecoration(
       color: Colors.deepPurple.shade400,
       borderRadius: BorderRadius.circular(20),
     ),
      child: Column(
        children: [
          SizedBox(height: 25,),
          Text('Available Balance',style: TextStyle(color: Colors.white),),
          SizedBox(height: 10,),
          Text('₦'+balance,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
          SizedBox(height: 15,),
          Text('Available Tokens: '+tokensPoints,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
