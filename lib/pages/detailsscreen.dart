import 'package:appcommerce/catagory-model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/constant.dart';
import '../shared/myapppar.dart';

class DetailsScreen extends StatefulWidget {
Catagory catagory;
DetailsScreen(this.catagory);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isshowmore=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: aapBarGreen,
        title: Text('Details Screen'),
        actions: [
          productandPrice(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(widget.catagory.image),
            SizedBox(
              height: 5,
            ),
            Text('\$ ${widget.catagory.price}',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(7),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius:BorderRadius.circular(5),
                  ),
                  child: Text('New',style: TextStyle(fontSize: 12),),
                ),
                SizedBox(width: 4,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,size: 26,),
                    Icon(Icons.star,color: Colors.yellow,size: 26,),
                    Icon(Icons.star,color: Colors.yellow,size: 26,),
                    Icon(Icons.star,color: Colors.yellow,size: 26,),
                    Icon(Icons.star,color: Colors.yellow,size: 26,),
                  ],
                ),
                Spacer(),
                Row(

                  children: [
                    Icon(Icons.edit_location,color: Colors.green,size: 30,),
                    SizedBox(width: 5,),
                    Text(widget.catagory.location,style: TextStyle(fontSize: 20),)
                  ],
                ),


              ],
            ),
            SizedBox(height: 22,),
            Text('Details: ',style: TextStyle(fontSize: 22),textAlign: TextAlign.start,),
            SizedBox(height: 7,),
            Text('There are two types of pollination: self-pollination and cross-pollination. Self-pollination occurs when the pollen from the anther is deposited on the stigma of the same flower, or another flower on the same plant. Cross-pollination is when pollen is transferred from the anther of one flower to the stigma of another flower on a different individual of the same species. Self-pollination happens in flowers where the stamen and carpel mature at the same time, '
                'and are positioned so that the pollen can land on the flower',style: TextStyle(fontSize: 20),
            overflow: TextOverflow.fade,
            maxLines:isshowmore? 3:null,),
            TextButton(onPressed: (){
              isshowmore=!isshowmore;
              setState(() {

              });
            }, child: Text(isshowmore?'See more':'show less',style: TextStyle(fontSize: 12),))

          ],
        ),
      ),
    );
  }
}
