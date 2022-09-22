import 'package:appcommerce/shared/constant.dart';
import 'package:appcommerce/shared/myapppar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class CheckOutScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: aapBarGreen,
        title: Text('check out Screen'),
        actions: [
          productandPrice(),
        ],
      ),
      body:  Column(
        children: [
          Expanded(
            child: ListView.builder(
                  itemCount: provider.mylist.length,
                  itemBuilder:(context,index){

                return Card(
                  child: ListTile(
                    title: Text(provider.mylist[index].name),
                    subtitle: Text('${provider.mylist[index].name} - ${provider.mylist[index].location}'),
                    leading: CircleAvatar(
                     backgroundImage: AssetImage(provider.mylist[index].image),
                    ),
                    trailing: IconButton(
                      onPressed: (){
                        provider.remove(provider.mylist[index]);
                      }, icon: Icon(Icons.remove),
                    ),
                  ),
                );
              }),
          ),
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                backgroundColor: MaterialStateProperty.all(PTNPink),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
              ),
              
              onPressed:(){}, child: Text('Pay\$ ${provider.price}'))
        ],
      ),

    );
  }
}
