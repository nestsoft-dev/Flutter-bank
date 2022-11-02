import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:netsoft_flutterwave/authentication/paystack.dart';

class MakePayment{
  MakePayment({required this.context,required this.price,required this.email});

  BuildContext context;
  int price;
  String email;

  PaystackPlugin paystack = PaystackPlugin();

  Future inipluging() async{
    await paystack.initialize(publicKey: ConstantKey.PAYSTACK_KEY);
  }

  //reference
  String _getreference(){
    String platform;
    if(Platform.isIOS){
      platform = 'IOS';
    }else{
      platform = 'android';
    }
    return 'ChargedFrom${platform}_${DateTime.now().millisecondsSinceEpoch}';
  }

  ///cardUi
  PaymentCard _getCardUI(){
    return PaymentCard(number: "", cvc: "", expiryMonth: 0, expiryYear: 0);
  }

  chargeCardandMakePayment() async{
    inipluging().then((_) async {
      Charge charge = Charge()
      ..amount = price * 100
      ..email = email
      ..reference = _getreference()
      ..card = _getCardUI();

      CheckoutResponse response = await paystack.checkout(context, charge: charge,
      method: CheckoutMethod.card,
      fullscreen: false,
      logo: FlutterLogo(size: 24,),
      );
      print(response);
      if(response.status == true){
        print('transaction done');
      }else{
        print('faild');
      }
    });



  }
}