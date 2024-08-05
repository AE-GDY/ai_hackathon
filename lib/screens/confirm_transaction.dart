import 'package:flutter/material.dart';
import 'package:vytal_trainer_app/utils/config.dart';


class ConfirmTransaction extends StatefulWidget {
  const ConfirmTransaction({Key? key}) : super(key: key);

  @override
  State<ConfirmTransaction> createState() => _ConfirmTransactionState();
}

class _ConfirmTransactionState extends State<ConfirmTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Confirm Transaction"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.withOpacity(0.2),
      ),
       body: Column(
         children: [
           Container(
             width: Config.screenWidth,
             height: Config.screenHeight! * 0.75,
             margin: EdgeInsets.only(left: 30,right: 30, top: 20),
             decoration: BoxDecoration(
               border: Border.all(color: Colors.grey),
               borderRadius: BorderRadius.circular(20),
             ),
             child: Column(
               children: [
                 SizedBox(height: 30,),
                 Text("ECARU", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                 Text("Waste Management Company", style: TextStyle(color: Colors.grey),),
                 SizedBox(height: 20,),
                 //Divider(color: Colors.grey,),
                 SizedBox(height: 20,),
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
                 Divider(color: Colors.grey.withOpacity(0.3),),
                 SizedBox(height: 20,),
                 Container(
                   margin: EdgeInsets.only(left: 20,right: 20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Price" ,style: TextStyle(fontSize: 18),),
                       Text("25 EGP",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                     ],
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 30,),
           Container(
             width: Config.screenWidth! * 0.8,
             height: 40,
             decoration: BoxDecoration(
               color: Colors.greenAccent.shade400,
               borderRadius: BorderRadius.circular(30),
             ),
             child: TextButton(
               onPressed: (){
                 Navigator.pushNamed(context, '/request-confirmed');
               },
               child: Text("Confirm Transaction", style: TextStyle(
                 color: Colors.white,
               ),),
             ),
           ),
         ],
       ),
    );
  }
}
