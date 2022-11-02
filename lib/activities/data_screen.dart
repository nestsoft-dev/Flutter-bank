import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../widgets/money_container.dart';

class BUYDATA extends StatefulWidget {
  const BUYDATA({Key? key}) : super(key: key);

  @override
  State<BUYDATA> createState() => _BUYDATAState();
}

class _BUYDATAState extends State<BUYDATA> {

  var _selectedNetwork;
  var selectedNetworkplan;
  var _selectedNetworkid;
  var selectedplanId;
  static const List<Map> _myjson = [
    {
      'id':'0',
      'networkID':'0',
      'name':'MTN',
      'image':'images/mtn.png'
    },
    {
      'id':'1',
      'networkID':'1',
      'name':'GLO',
      'image':'images/airtel.png'
    },
    {
      'id':'2',
      'networkID':'2',
      'name':'9MOBILE',
      'image':'images/ninemobile.png'
    },
    {
      'id':'3',
      'networkID':'3',
      'name':'AIRTEL',
      'image':'images/ninemobile.png'
    },
    {
      'id':'4',
      'networkID':'4',
      'name':'SMILE',
      'image':'images/ninemobile.png'
    },
  ];

 static const List<Map> _networkplan = [

    {
      'id':'1',
      'networkPlan':'plan',
      'name':'mtn',
      'plan_description':'DATA GIFTING ₦1438 6GB 1week airtime/data',
      'image':'images/mtn.png'
    },
    {
      'id':'2',
      'networkPlan':'plan',
      'name':'airtel',
      'plan_description':'des',
      'image':'images/airtel.png'
    },

    {
      'id':'3',
      'networkPlan':'plan',
      'plan_description':'des',
      'name':'9mobile',
      'image':'images/ninemobile.png'
    },

  ];

TextEditingController _datanumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 15,),

              //app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Piggy wallet Data Purchase',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),

              SizedBox(height: 25,),

              //Money container
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

              //dataplan
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
                            hint: Text('Select Data plan',style: TextStyle(
                                color: Colors.white
                            ),),
                            value: selectedNetworkplan,
                            items: _networkplan.map((banklist) {
                              selectedplanId = banklist['networkPlan'];
                              return DropdownMenuItem(
                                  value: banklist['id'].toString(),
                                  child:
                                  Row(
                                    children: [
                                      Image.asset(banklist['image'],width: 25,),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(banklist['plan_description'],style: TextStyle(
                                            color: Colors.black
                                        ),),
                                      )
                                    ],
                                  ));
                            }).toList(),
                            onChanged: (newVale){
                              setState(() {
                                selectedNetworkplan = newVale;
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

              //number'
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _datanumber ,
                maxLength: 11,
                style: TextStyle(
                  color: Colors.white
              ),
          decoration: InputDecoration(
              hoverColor: Colors.grey,

              label: Text('Enter amount',style: TextStyle(color: Colors.grey),),
              prefixIcon: Icon(Icons.numbers),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
              hintText: "amount",
              hintStyle:TextStyle(
                  color: Colors.white60
              )
          ),
              ),


              SizedBox(height: 20,),


              //Button
              GestureDetector(
                onTap: (){
                  setState(() {
                    //print("clicked ${selectedNetworkId}");
                    print(_selectedNetwork);
                   // _buyData(_datanumber.toString(), selectedNetwork.toString(), selectedNetworkplan.toString());
                  });
                },
                child: Container(
                  height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text('Buy Data',style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }


  Future<void> _buyData(String _networkplanId, String _number,String _planId) async{
    Uri uri = Uri.http('superjara.com', '/api/data/');
    http.Response res = await http.post(uri,
    headers: {
      'Authorization': 'Token 71b5f4d3ddd0411e19b7a6dd15c39e00be894376',
         // 'Content-Type': 'application/json'

    },
      body: {
      "network": _networkplanId,
      "mobile_number": _number,
        "plan": _planId,

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
