import 'package:flutter/material.dart';

class VistualCard extends StatefulWidget {
  const VistualCard({Key? key}) : super(key: key);

  @override
  State<VistualCard> createState() => _VistualCardState();
}

class _VistualCardState extends State<VistualCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.deepPurple,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Visual Card',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Icon(Icons.add,color: Colors.white,size: 30,)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/2,),

              Center(
                child: Text('No visual card available for now',style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
