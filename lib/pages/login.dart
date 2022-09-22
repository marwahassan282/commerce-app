
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/constant.dart';
import '../shared/custom-textfiled.dart';
import 'Register.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 66,),
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
              onPressed:(){}, child:Text('sign in',style: TextStyle(
              fontSize: 19
            ),),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account ?',style: TextStyle(fontSize: 18),),
                TextButton(onPressed:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>RegisterScreen()));
                }, child:Text('sign up',style: TextStyle(fontSize: 18),))
              ],
            )
          ],
        ),
      ),

    );
  }
}
