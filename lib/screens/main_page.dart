import 'package:flutter/material.dart';
import 'package:netsoft_flutterwave/activities/utilities.dart';
import '../activities/airtime.dart';
import '../activities/data_screen.dart';
import '../activities/gift_cards.dart';
import '../widgets/bills_container.dart';
import '../widgets/money_container.dart';


class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {

  late int tokens = 25103;
  int availableBalance = 251553;
  late int convertToken = 250;


  late int availableCoin = 265810;

  late int currentToken = 25103;


  void swapToken(int coin){

        if(tokens > coin){
      tokens - 150;
      currentToken = tokens - 250;
      availableBalance + 25;

      showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator(),);
        },);
      // setState(() {
      //
      // });
      Navigator.of(context).pop();
    }else{

    }




  }

  @override
  void initState() {
     //convertToken = 250;
    // swapToken(convertToken);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 10,left: 10),
          child: Column(
            children: [
              //App bar
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('PiggyBank',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),

              //money container
              SizedBox(height: 25,),
              MoneyContainer(balance: availableBalance.toString(), tokensPoints: currentToken.toString(),),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Features available',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.bold),)
                ],
              ),
              SizedBox(
                height: 10,
              ),

              // send -> wallet-> withdraw ->
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 100 ,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.purple.shade500,
                              blurRadius: 5,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Image.asset('images/telegram.png'),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text("Send",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 100 ,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.purple.shade500,
                              blurRadius: 10,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Image.asset('images/wallet.png'),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text("Request",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 100 ,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.purple.shade500,
                              blurRadius: 10,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Image.asset('images/withdraw_funds.png'),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text("Withdraw",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),),
                    ],
                  ),

                ],
              ),
              
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Bills,Utilities,Data & Airtime Purchase',style: TextStyle(color: Colors.grey[200],fontSize: 18,fontWeight: FontWeight.w200),),

                ], ),
              SizedBox(height: 20,),
                  //Bills,Utilities,Data & Airtime Purchase container
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BUYDATA(),));
                    },
                      child: BillsContainer(title: 'Data Purchase', description: 'Purchase Data for all \n  Network of Your choice', image: 'images/data.png',)),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          swapToken(convertToken);
                        });
                      },
                      child: BillsContainer(title: 'Swap Tokens', image: 'images/swap.png', description: 'Swap PiggyBank Tokens\n to Money',)),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BUYAIRTIME(),));
                    },
                      child: BillsContainer(title: 'Airtime purchase', image: 'images/pickaxe.png', description: 'Purchase Airtime \n for various network',)),
                  InkWell(
                    highlightColor: Colors.purpleAccent,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Utilities(),));
                      },
                      child: BillsContainer(title: 'Utilities bills', description: 'Pay for various \n house bills & utilities', image: 'images/utilities.png',)),
                ],
              ),

              SizedBox(height: 10,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GiftCards(),));

                  },
                  child: BillsContainer(title: 'Trade Gifts Cards', image: 'images/gift_card.png', description: 'Trade various GiftsCards',)),
            ],
          ),
        ),
      ),
    );
  }
}
