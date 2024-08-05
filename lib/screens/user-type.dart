import 'package:flutter/material.dart';
import 'package:vytal_trainer_app/utils/config.dart';


class UserType extends StatefulWidget {
  const UserType({Key? key}) : super(key: key);

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {

  bool user = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30,right: 30),
        width: Config.screenWidth,
        height: Config.screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("What type of user are you?", style: TextStyle(
              fontSize: 24,
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Config.screenWidth! * 0.4,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: user?Colors.greenAccent.shade400:Colors.grey, width: user?2:1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        user = true;
                      });
                    },
                    child: Text("User", style: TextStyle(
                      color: Colors.black,
                    ),),
                  ),
                ),
                Container(
                  width: Config.screenWidth! * 0.4,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: !user?Colors.greenAccent.shade400:Colors.grey, width: !user?2:1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        user = false;
                      });
                    },
                    child: Text("Business", style: TextStyle(
                      color: Colors.black,
                    ),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Container(
              width: Config.screenWidth! * 0.8,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade400,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text("Continue", style: TextStyle(
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
