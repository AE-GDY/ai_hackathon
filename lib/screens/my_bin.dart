import 'package:flutter/material.dart';
import 'package:vytal_trainer_app/utils/config.dart';


class MyBin extends StatefulWidget {
  const MyBin({Key? key}) : super(key: key);

  @override
  State<MyBin> createState() => _MyBinState();
}

class _MyBinState extends State<MyBin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("My Bin"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.withOpacity(0.2),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Container(
                width: Config.screenWidth,
                height: 150,
                child: Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Recent Detection", style: TextStyle(fontSize: 20),),
                            Text("4 mins ago", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        ListTile(
                          minLeadingWidth: 0,
                          minVerticalPadding:0,
                          horizontalTitleGap: 10,
                          leading:VerticalDivider(color: Colors.yellow.shade700,),
                          title: Text("Eggs"),
                          trailing: Text("10g", style: TextStyle(fontSize: 15),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
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
              SizedBox(height: 10,),
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding:0,
                horizontalTitleGap: 10,
                leading:VerticalDivider(color: Colors.yellow.shade700,),
                title: Text("Eggs"),
                trailing: Text("10g", style: TextStyle(fontSize: 15),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
