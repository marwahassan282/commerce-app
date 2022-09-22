import 'package:appcommerce/pages/checkoutscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class productandPrice extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder:(context,testt,child){
      return Row(children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(221, 164, 225, 193)
              ),
              child: Text('${testt.mylist.length}',style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(225, 0, 0, 0),
              ),),
            ),
            IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>CheckOutScreen())) ;

            }, icon: Icon(Icons.add_shopping_cart)),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text('\$ ${testt.price}',style: TextStyle(fontSize: 14),),
        ),
      ],);
    });;
  }
}
