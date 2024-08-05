import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';


class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  TextEditingController emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  bool obsecurePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(left: 30,right: 30),
          width: Config.screenWidth,
          height: Config.screenHeight! * 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Text("Sign in ", style: TextStyle(fontSize: 30),),
              SizedBox(height: 10,),
              Image.asset("assets/signin.jpg"),
              Container(
                width: Config.screenWidth,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade100.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.greenAccent.shade400,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 14.0,), // Adjust the hint text size here
                      border: InputBorder.none, // Removes the border
                      focusedBorder: InputBorder.none, // Removes the focused border
                      enabledBorder: InputBorder.none, // Removes the enabled border
                      errorBorder: InputBorder.none, // Removes the error border
                      disabledBorder: InputBorder.none, // Removes the disabled border
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: Config.screenWidth,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade100.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                    controller: _passController,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: obsecurePass,
                    cursorColor: Colors.greenAccent.shade400,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 14.0,), // Adjust the hint text size here
                        border: InputBorder.none, // Removes the border
                        focusedBorder: InputBorder.none, // Removes the focused border
                        enabledBorder: InputBorder.none, // Removes the enabled border
                        errorBorder: InputBorder.none, // Removes the error border
                        disabledBorder: InputBorder.none, // Removes the disabled border
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obsecurePass = !obsecurePass;
                              });
                            },
                            icon: obsecurePass
                                ? const Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.black38,
                            )
                                : const Icon(
                              Icons.visibility_outlined,
                              color: Config.primaryColor,
                            ))),
                  ),
                ),
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
                    Navigator.pushNamed(context, 'main');
                  },
                  child: Text("Sign in", style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
