import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import '../card_input/card_input.dart';
import '../widgets/atm_widget.dart';
import '../widgets/money_container.dart';

class WalletTopUp extends StatefulWidget {
  const WalletTopUp({Key? key}) : super(key: key);

  @override
  State<WalletTopUp> createState() => _WalletTopUpState();
}

class _WalletTopUpState extends State<WalletTopUp> {
  TextEditingController _amountInput = TextEditingController();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
            children: [
              //App bar
            //  SizedBox(height: 15,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //
              //     Text('Wallet TopUp',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              //   ],
              // ),
              //
              // SizedBox(height: 10,),
              // //Money container
              // MoneyContainer(balance: '21,562.42', tokensPoints: '2456',),
              //
              //
              // //input amount
              // SizedBox(height: 15,),
              // Container(
              //   height: 60,
              //   width: MediaQuery.of(context).size.width,
              //   margin: EdgeInsets.only(left: 20,right: 20),
              //   padding: EdgeInsets.all(5),
              //   decoration: BoxDecoration(
              //     color: Colors.deepPurple[200],
              //     borderRadius: BorderRadius.circular(15)
              //   ),
              //   child: TextFormField(
              //     controller: _amountInput,
              //     style: TextStyle(color: Colors.white,fontSize: 30),
              //
              //     decoration: InputDecoration(
              //       icon: Icon(Icons.monetization_on,color: Colors.deepPurple,),
              //       fillColor: Colors.white70,
              //       border: InputBorder.none,
              //       hintText: 'Please input TopUp Amount',
              //       hintStyle: TextStyle(color: Colors.white70),
              //
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20,),
              CardInput(),



              //Button
              // GestureDetector(
              //   onTap: (){
              //     print(_amountInput.toString());
              //     // _handlePaymentInitialization(_amountInput.toString());
              //   },
              //   child: Container(
              //     height: 50,
              //     width: 200,
              //     decoration: BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.circular(12)
              //     ),
              //     child: Center(child: Text('TopUp Wallet',style: TextStyle(color: Colors.white),)),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  // void _handlePaymentInitialization(String amount) async {
  //   final style = FlutterwaveStyle(
  //       appBarText: "My Standard Blue",
  //       buttonColor: Color(0xffd0ebff),
  //       appBarIcon: Icon(Icons.message, color: Color(0xffd0ebff)),
  //       buttonTextStyle: TextStyle(
  //           color: Colors.black,
  //           fontWeight: FontWeight.bold,
  //           fontSize: 18),
  //       appBarColor: Color(0xffd0ebff),
  //       dialogCancelTextStyle: TextStyle(
  //           color: Colors.redAccent,
  //           fontSize: 18
  //       ),
  //       dialogContinueTextStyle: TextStyle(
  //           color: Colors.blue,
  //           fontSize: 18
  //       )
  //   );
  //
  //   final Customer customer = Customer(
  //       name: "FLW Developer",
  //       phoneNumber: "1234566677777",
  //       email: "customer@customer.com"
  //   );
  //
  //   final Flutterwave flutterwave = Flutterwave(
  //       context: context,
  //       style: style,
  //       publicKey: "FLWPUBK_TEST-2ea0b3979bd25e0ebda786bf496e166a-X",
  //       currency: "NGN",
  //       redirectUrl: "my_redirect_url",
  //       txRef: "unique_transaction_reference",
  //       amount: amount,
  //       customer: customer,
  //       paymentOptions: "ussd, card, barter, payattitude",
  //       customization: Customization(title: "Netsoft wallet TopUp"),
  //       isTestMode: true
  //       // isDebug: true, isTestMode: true
  //
  //     // final ChargeResponse response = await flutterwave.charge();
  //     //  if (response != null) {
  //     //      print(response.toJson());
  //     // 	 if(response.success) {
  //     // 	 Call the verify transaction endpoint with the transactionID returned in `response.transactionId` to verify transaction before offering value to customer
  //     // 	 } else {
  //     // 	  // Transaction not successful
  //     // 	}
  //     //  } else {
  //     //   // User cancelled
  //     //  }
  //
  //   );
  //
  //
  // }
}
