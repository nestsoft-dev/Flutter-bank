import 'package:flutter/material.dart';

class GiftCards extends StatefulWidget {
  const GiftCards({Key? key}) : super(key: key);

  @override
  State<GiftCards> createState() => _GiftCardsState();
}

class _GiftCardsState extends State<GiftCards> {

  var selectedNetwork;
  var selectedNetworkplan;
  var selectedNetworkId;
  var selectedplanId;
  var planSelected;
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


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Column(
          children: [

            SizedBox(height: 15,),

            //app bar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Piggy wallet GiftCards Exchange',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),

            SizedBox(height: 15,),
            //Cable
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
                          hint: Text('Select Cable',style: TextStyle(
                              color: Colors.white
                          ),),
                          value: selectedNetwork,
                          items: _myjson.map((banklist) {
                            selectedNetworkId = banklist['networkID'];
                            return DropdownMenuItem(
                                value: banklist['id'].toString(),
                                child:
                                Row(
                                  children: [
                                    Image.asset(banklist['image'],width: 25,),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: InkWell(
                                        onTap: (){
                                          setState(() {
                                            planSelected = banklist['name'];
                                          });
                                        },
                                        child: Text(banklist['name'],style: TextStyle(
                                            color: Colors.black
                                        ),),
                                      ),
                                    )
                                  ],
                                ));
                          }).toList(),
                          onChanged: (newVale){
                            setState(() {
                              selectedNetwork = newVale;
                              planSelected = selectedNetwork['id'];
                              //_selectedNetworkId = newVale;
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

            //plan $ price
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
          ],
        ),
      ),
    );
  }
}
