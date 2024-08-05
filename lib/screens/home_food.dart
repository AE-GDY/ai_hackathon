import 'package:flutter/material.dart';
import 'package:vytal_trainer_app/utils/config.dart';


class HomeFood extends StatefulWidget {
  const HomeFood({Key? key}) : super(key: key);

  @override
  State<HomeFood> createState() => _HomeFoodState();
}

class _HomeFoodState extends State<HomeFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.greenAccent.withOpacity(0.2),
        title: Text("Home"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Text(" Welcome, Ahmed", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
                child: Text(" Buyers based on your items", style: TextStyle(
                fontSize: 18,
                //fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 10,),
            IntrinsicHeight(
              child: Container(
                width: Config.screenWidth,
                //height: 200,
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ECARU", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  Text("Waste Management Company", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("25 EGP", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),),
                                  SizedBox(height: 5,),
                                  IntrinsicWidth(
                                    child: Container(
                                      height: 30,
                                      padding: EdgeInsets.only(left: 10,right: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade400,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: TextButton(
                                          onPressed: (){
                                            Navigator.pushNamed(context, '/confirm-transaction');
                                          },
                                          child: Center(
                                            child: Text("Sell", style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11
                                            ),),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.grey,),
                        SizedBox(height: 10,),
                        Text("Matching Bin Items", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Text("Fruits & Vegetables", style: TextStyle(color: Colors.black, fontSize: 16,),),
                        Divider(color: Colors.grey.withOpacity(0.3),),
                        ListTile(
                          minLeadingWidth: 0,
                          minVerticalPadding:0,
                          horizontalTitleGap: 10,
                          leading:VerticalDivider(color: Colors.red,),
                          title: Text("Apple"),
                          trailing: Text("4g", style: TextStyle(fontSize: 15),),
                        ),
                        SizedBox(height: 10,),
                        ListTile(
                          minLeadingWidth: 0,
                          minVerticalPadding:0,
                          horizontalTitleGap: 10,
                          leading:VerticalDivider(color: Colors.yellow,),
                          title: Text("Bananas"),
                          trailing: Text("3g", style: TextStyle(fontSize: 15),),
                        ),
                        SizedBox(height: 10,),
                        ListTile(
                          minLeadingWidth: 0,
                          minVerticalPadding:0,
                          horizontalTitleGap: 10,
                          leading:VerticalDivider(color: Colors.greenAccent.shade400,),
                          title: Text("Cucumber"),
                          trailing: Text("0.2g", style: TextStyle(fontSize: 15),),
                        ),
                        SizedBox(height: 10,),
                        Text("Carbs & Proteins", style: TextStyle(color: Colors.black, fontSize: 16,),),
                        Divider(color: Colors.grey.withOpacity(0.3),),
                        ListTile(
                          minLeadingWidth: 0,
                          minVerticalPadding:0,
                          horizontalTitleGap: 10,
                          leading:VerticalDivider(color: Colors.brown,),
                          title: Text("Bread"),
                          trailing: Text("0.5g", style: TextStyle(fontSize: 15),),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            IntrinsicHeight(
              child: Container(
                width: Config.screenWidth,
                //height: 200,
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Card(
                    elevation: 4,
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Outgreens Egypt", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                    Text("Waste Management Company", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("15 EGP", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),),
                                    SizedBox(height: 5,),
                                    IntrinsicWidth(
                                      child: Container(
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10,right: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.greenAccent.shade400,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: TextButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, '/confirm-transaction');
                                            },
                                            child: Center(
                                              child: Text("Sell", style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11
                                              ),),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Divider(color: Colors.grey,),
                          SizedBox(height: 10,),
                          Text("Matching Bin Items", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Text("Fruits & Vegetables", style: TextStyle(color: Colors.black, fontSize: 16,),),
                          Divider(color: Colors.grey.withOpacity(0.3),),
                          ListTile(
                            minLeadingWidth: 0,
                            minVerticalPadding:0,
                            horizontalTitleGap: 10,
                            leading:VerticalDivider(color: Colors.red,),
                            title: Text("Apple"),
                            trailing: Text("4g", style: TextStyle(fontSize: 15),),
                          ),
                          SizedBox(height: 10,),
                          ListTile(
                            minLeadingWidth: 0,
                            minVerticalPadding:0,
                            horizontalTitleGap: 10,
                            leading:VerticalDivider(color: Colors.yellow,),
                            title: Text("Bananas"),
                            trailing: Text("3g", style: TextStyle(fontSize: 15),),
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
