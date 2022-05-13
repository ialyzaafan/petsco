import 'package:flutter/material.dart';
import 'package:petsco/models/ProductModel.dart';
import 'package:petsco/style.dart';
import '../../pre/my_flutter_app_icons.dart' as petsco;
import 'FavouriteCard.dart';

class FavouriteProducts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
              backgroundColor: mainColor,
              elevation: 0,
              centerTitle: true,
              title: Text("Favourites",style: mediumAppBarWhiteTextStyle,),
              actions: <Widget>[
                IconButton(icon: Icon(petsco.MyFlutterApp.search__1_,color: Colors.white,), onPressed: (){
                  Navigator.pushNamed(context, "/search");
                })
              ],
            ),
            body: Container(
              child: Container(
                    padding: EdgeInsets.only(top: 29.0,bottom: 12,left: 12,right: 12),
                    child: FavourieCardBuilder(productArray),
                  ),
                decoration: BoxDecoration(
            color: Color(0xffF3FAEE),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
                ),
              ),
    ) ;
    
  }
}