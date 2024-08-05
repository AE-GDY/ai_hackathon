import 'package:flutter/material.dart';
import 'package:vytal_trainer_app/utils/config.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isSignIn = true;
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: Config.screenWidth,
        height: Config.screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WasteLess", style: TextStyle(
              fontSize: 40,
            ),),
            Image.asset("assets/home.jpg", width: 200, height: 200,),
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
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text("Get started", style: TextStyle(
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
