import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MytextFiled extends StatelessWidget {
  TextInputType mytextinput;
  String hittext;
  bool ispassword;
  MytextFiled(this.mytextinput,this.hittext,this.ispassword);

  @override
  Widget build(BuildContext context) {
    return TextField(


      keyboardType:mytextinput,
      obscureText: ispassword,
      decoration:InputDecoration(
          hintText: hittext,

          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:Colors.grey
            ),

          ),
          filled: true,
          contentPadding:EdgeInsets.all(8)
      ),



    );
  }
}
