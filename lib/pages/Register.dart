
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/constant.dart';
import '../shared/custom-textfiled.dart';
import 'login.dart';

class RegisterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 66,),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: MytextFiled(TextInputType.text,'your user name',false),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: MytextFiled(TextInputType.emailAddress,'Enter your Email Adress',false),
              ),
              SizedBox(height: 33,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: MytextFiled(TextInputType.text,'Enter your pass word',true),
              ),
              SizedBox(
                height: 33,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(PTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))

                ),
                onPressed:(){}, child:Text('Register',style: TextStyle(
                  fontSize: 19
              ),),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' have an account ?',style: TextStyle(fontSize: 18),),
                  TextButton(onPressed:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginScreen()));
                  }, child:Text('sign in ',style: TextStyle(fontSize: 18),))
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}