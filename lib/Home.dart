
import 'package:appcommerce/catagory-model.dart';
import 'package:appcommerce/pages/detailsscreen.dart';
import 'package:appcommerce/provider/cart.dart';
import 'package:appcommerce/shared/constant.dart';
import 'package:appcommerce/shared/myapppar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  var catagory=Catagory.getCatagory();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 33),
              itemCount: catagory.length,

              itemBuilder:(context,index){
            return GestureDetector(
              onTap: (){
Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailsScreen(catagory[index])));
              },
              child: GridTile(


                  child: Stack(
                children: [
                  Positioned(
                    bottom:-9,
                    top: -3,
                    right: 0,
                    left: 0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(55)
                        ,
                        child: Image.asset(catagory[index].image)),
                  )
                ],
              ),
                footer: GridTileBar(
                  title: Text(''),

                  leading: Text('\$ ${catagory[index].price}'),
                  trailing: Consumer<Cart>(
                  builder: (context,test,child){
                    return IconButton(
                      onPressed: (){
                        test.add(catagory[index]);
                      },
                      icon: Icon(Icons.add,
                        color: Colors.black,),
                    );
                  },
                  )
                ),

              ),
            );

              }),
        ),
        drawer: Drawer(
child: Column(
  children: [
    UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/test.jpg',),fit: BoxFit.cover,
          
        )
      ),
      currentAccountPicture: CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage('assets/images/ali.jpg',),

      ),

      accountName: Text('marwa hassan'), accountEmail: Text('marwahassan@gmail.com'),
      
      

    ),
    ListTile(
      onTap: (){},
      title:Text('Home'),
      leading: Icon(Icons.shop),
    ),
    ListTile(
      onTap: (){},
      title:Text('myProduct'),
      leading: Icon(Icons.add_shopping_cart),
    ),
    ListTile(
      onTap: (){},
      title:Text('About'),
      leading: Icon(Icons.help_center),
    ),
    ListTile(
      onTap: (){},
      title:Text('Logout'),
      leading: Icon(Icons.exit_to_app),
    ),
    Spacer(),

    Text('Developed my marwa hassan'),
    SizedBox(height: 15,),

  ],
),
        ),

        appBar: AppBar(
          backgroundColor: aapBarGreen,
          title: Text('Home'),
          actions: [
            productandPrice(),
          ],
        ),
      ),
    );
  }
}
