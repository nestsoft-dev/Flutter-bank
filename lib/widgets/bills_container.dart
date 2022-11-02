import 'package:flutter/material.dart';

class BillsContainer extends StatelessWidget {
  String title,description,image;

   BillsContainer({Key? key,required this.title,required this.description,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          SizedBox(height: 15,),
          Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 20,),
          Image(image:AssetImage(image),height: 50,width: 50 ,fit: BoxFit.cover,),
          // Container(
          //   height: 80,
          //   width: 60,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(40),
          //     color: Colors.deepPurple.shade400,
          //
          //   ),
          //   child: Image(image:AssetImage(image) ,fit: BoxFit.cover,),
          // ),
          SizedBox(height: 25,),
         Padding(
           padding: EdgeInsets.only(left: 5,right: 10),
         child:  SizedBox(
           width: double.infinity ,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Text(description,style: TextStyle(color: Colors.grey.shade200,fontSize: 14),)
             ],
           ),
         ),)
        ],
      ),
    );
  }
}
