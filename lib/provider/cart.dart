

import 'package:appcommerce/catagory-model.dart';
import 'package:flutter/cupertino.dart';


class Cart extends ChangeNotifier{
 List mylist=[];
 double price=0.0;

 void add(Catagory catagory){
  mylist.add(catagory);
  price+=catagory.price.round();
  notifyListeners();
 }
 void remove(Catagory catagory){
  mylist.remove(catagory);
  price-=catagory.price.round();
  notifyListeners();
 }



}