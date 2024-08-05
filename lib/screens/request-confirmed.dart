import 'package:flutter/material.dart';
import 'package:vytal_trainer_app/utils/config.dart';


class RequestConfirmed extends StatefulWidget {
  const RequestConfirmed({Key? key}) : super(key: key);

  @override
  State<RequestConfirmed> createState() => _RequestConfirmedState();
}

class _RequestConfirmedState extends State<RequestConfirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Config.screenWidth,
        height: Config.screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You received", style: TextStyle(
              fontSize: 24,
            ),),
            Text("25 EGP", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent.shade700
            ),),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),
              child: Text("Your items will be collected by one of our representatives within 24 hours", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal
              ),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 30,),
            Icon(Icons.check_circle, color: Colors.greenAccent.shade400, size: 100,),
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
                  Navigator.pushNamed(context, 'main');
                },
                child: Text("Go to home", style: TextStyle(
                  color: Colors.white,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
