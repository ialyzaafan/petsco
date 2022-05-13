import 'package:flutter/material.dart';
import 'package:petsco/models/ProductModel.dart';
import 'package:petsco/style.dart';
import 'package:petsco/views/cart/CartProduct.dart';
import '../../pre/my_flutter_app_icons.dart' as petsco;

class CartView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

          return Scaffold(
            backgroundColor: mainColor,
            appBar: AppBar(
              backgroundColor: mainColor,
              elevation: 0,
              centerTitle: true,
              title: Text("Cart",style: mediumAppBarWhiteTextStyle,),
              actions: <Widget>[
                IconButton(icon: Icon(petsco.MyFlutterApp.search__1_,color: Colors.white,), onPressed: (){
                  Navigator.pushNamed(context, "/search");

                })
              ],
            ),
            body: Stack(
              children: <Widget>[


                 Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 29,left: 12,right: 12,bottom: 120),
                                    child: Container(
                    
                    child: CartProductVerticalBuilder(products: productArray),
                  ),
                    decoration: BoxDecoration(
            color: Color(0xffF3FAEE),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
                    ),
                  ),
                ),

                  Positioned(
                    left: 0,
                    right: 0,
                bottom: 0,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Total",style: largeTitleWhiteTextStyle,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 5,bottom: 5),
                                            child: Text("${1023.32} L.E",style: mediumAppBarWhiteTextStyle,),
                                          ),
                                          Text("Free shipping",style: mediumAppBarWhiteTextStyle,)
                                        ],
                                      ),
                                      Center(child: RaisedButton(onPressed: (){

                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4.0)
                                      ),
                                      child:Text("Checkout") ,
                                      ))
                                    ],
                                  ),
                                ),
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff21295C),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))
                  ),
                ),
              )
              ],
            ),
          ) ;    
    
  }
}






