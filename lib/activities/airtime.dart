import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../widgets/money_container.dart';

class BUYAIRTIME extends StatefulWidget {
  const BUYAIRTIME({Key? key}) : super(key: key);

  @override
  State<BUYAIRTIME> createState() => _BUYAIRTIMEState();
}

class _BUYAIRTIMEState extends State<BUYAIRTIME> {
  TextEditingController _number = TextEditingController();
  TextEditingController _network = TextEditingController();
  TextEditingController _amount = TextEditingController();
  
  var _selectedNetwork;
  var _selectedNetworkid;
  List<Map> _myjson = [
    {
      'id':'1',
      'name':'mtn',
      'image':'images/mtn.png'
    },
    {
      'id':'2',
      'name':'airtel',
      'image':'images/airtel.png'
    },
    {
      'id':'3',
      'name':'ninemobile',
      'image':'images/ninemobile.png'
    },
  ];

  @override
  void initState() {
    //buyAirtime(_selectedNetwork, _amount.toString(), _number.toString());
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          padding:EdgeInsets.only(right: 20,left: 20),
          child: Column(
            children: [

              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('PiggyBank Airtime Purchase',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),

              SizedBox(height: 25,),

              MoneyContainer(balance: '25,254.26', tokensPoints: '3512',),
              SizedBox(height: 30,),

              //network
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.deepPurpleAccent,
                  border: Border.all(width:1,color:Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown:true,
                          child: DropdownButton(
                            hint: Text('Select Network',style: TextStyle(
                              color: Colors.white
                            ),),
                            value: _selectedNetwork,
                            items: _myjson.map((banklist) {
                              _selectedNetworkid = banklist['id'];
                              return DropdownMenuItem(
                                  value: banklist['id'].toString(),
                                  child:
                                  Row(
                                    children: [
                                      Image.asset(banklist['image'],width: 25,),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(banklist['name'],style: TextStyle(
                                          color: Colors.black
                                        ),),
                                      )
                                    ],
                                  ));
                            }).toList(),
                            onChanged: (newVale){
                              setState(() {
                                _selectedNetwork = newVale;
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ),
              SizedBox(height: 20,),


              //amount
              TextFormField(
                controller: _amount,
                maxLength: 4,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    hoverColor: Colors.grey,

                    label: Text('Enter amount',style: TextStyle(color: Colors.white70),),
                    prefixIcon: Icon(Icons.money),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                    hintText: "amount",
                    hintStyle:TextStyle(
                        color: Colors.white60
                    )
                ),
              ),

              SizedBox(height: 15,),


              //number
              TextFormField(
                controller: _number,
                maxLength: 11,
                keyboardType: TextInputType.number,
                style:  TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    hoverColor: Colors.grey,

                    label: Text('Enter number',style: TextStyle(color: Colors.white70),),
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                    hintText: "number",
                    hintStyle:TextStyle(
                        color: Colors.grey
                    )
                ),
              ),





              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  print('clicked${_selectedNetwork}');
                  //getcard(_number.toString(),_selectedNetwork,_amount.toString());
                  buyAirtime(_selectedNetwork, _amount.toString(), _number.toString());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurpleAccent.shade100,
                    border: Border.all(width: 1,color: Colors.blueAccent)
                  ),
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                      Text('Purchase Airtime',style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  Future<void> buyAirtime(String networkId, String amount,String phoneNumber) async{
    Uri uri = Uri.http('superjara.com', '/api/topup/');
    http.Response res = await http.post(uri,
        headers: {
          'Authorization': 'Token 71b5f4d3ddd0411e19b7a6dd15c39e00be894376',
          // 'Content-Type': 'application/json'

        },
        body: {
          "network": networkId,
          "amount":amount,
          "mobile_number": phoneNumber,
          "Ported_number": 'true',
          "airtime_type": "VTU"

        }
    );


    if (res.statusCode == 200) {
      print(await res.body);
      SnackBar(content: Text(res.body),elevation: 2,);
    }
    else {
      print(res.body);
    }


  }
}
