import 'package:flutter/material.dart';


class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("History"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.withOpacity(0.2),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text("   Recent Transactions", style: TextStyle(fontSize: 22,),),
            SizedBox(height: 10,),
            Divider(color: Colors.grey.withOpacity(0.5),),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.check, color: Colors.greenAccent.shade700,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ECARU", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: (){},
                              child: Center(
                                child: Text("View Items", style: TextStyle(
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
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.check, color: Colors.greenAccent.shade700,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Outgreens Egypt", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("Waste Management Company", style: TextStyle(color: Colors.grey, fontSize: 12),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("35 EGP", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                      SizedBox(height: 5,),
                      IntrinsicWidth(
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.only(left: 10,right: 10),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: (){},
                              child: Center(
                                child: Text("View Items", style: TextStyle(
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
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.check, color: Colors.greenAccent.shade700,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ECARU", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("Waste Management Company", style: TextStyle(color: Colors.grey, fontSize: 12),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("10 EGP", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                      SizedBox(height: 5,),
                      IntrinsicWidth(
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.only(left: 10,right: 10),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: (){},
                              child: Center(
                                child: Text("View Items", style: TextStyle(
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
            SizedBox(height: 40,),
            Text("   Top waste items sold", style: TextStyle(fontSize: 22,),),
            SizedBox(height: 10,),
            Divider(color: Colors.grey.withOpacity(0.5),),
            SizedBox(height: 10,),

            ListTile(
              minLeadingWidth: 0,
              minVerticalPadding:0,
              horizontalTitleGap: 10,
              leading:VerticalDivider(color: Colors.red,),
              title: Text("Apple"),
              trailing: Text("105 EGP", style: TextStyle(fontSize: 15),),
            ),
            SizedBox(height: 10,),
            ListTile(
              minLeadingWidth: 0,
              minVerticalPadding:0,
              horizontalTitleGap: 10,
              leading:VerticalDivider(color: Colors.brown,),
              title: Text("Bread"),
              trailing: Text("40 EGP", style: TextStyle(fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }
}
