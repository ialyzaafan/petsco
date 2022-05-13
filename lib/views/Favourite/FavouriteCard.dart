import 'package:flutter/material.dart';
import 'package:petsco/models/ProductModel.dart';
import '../../pre/my_flutter_app_icons.dart' as petsco;


import '../../style.dart';

class FavourieCard extends StatefulWidget {
  final int index;
  final ProductModel product;
  FavourieCard(this.product, this.index);
  @override
  State<StatefulWidget> createState() => _FavourieCard();
}

class _FavourieCard extends State<FavourieCard> {
  Color colorStatus(String status) {
    Color color;
    if (status == "New") {
      color = Color(0xff8E53FC);
    } else if (status == "") {
      color = Colors.white;
    } else {
      color = Color(0xffC2031D);
    }
    return color;
  }

  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 160.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Center(
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        widget.product.status,
                        style: smallWhiteTextButtonStyle,
                      ))),
              height: 160.0,
              width: 40,
              decoration: BoxDecoration(
                  color: colorStatus(widget.product.status),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13.0),
                      bottomLeft: Radius.circular(13.0))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                widget.product.imgURL[0],
                width: 91.5,
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.product.name,
                    style: descriptionTextStyle,
                  ),
                  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("${widget.product.price} L.E",style: smallGreenTextStyle,),
                                Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.star,size: 15,color: secondryColor,),
                          Text("${widget.product.rating}",style: smallSecondryColor,),
                          SizedBox(width: 10,)
                        ],
                      ),
                              ],
                            ),
                            Divider(),
                            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Icon(Icons.share,color: mainColor),
                    InkWell(
                      onTap: (){
                        if(!widget.product.inCart){
                          setState(() {
                            widget.product.inCart = true;
                          });
                        }else{
                          setState(() {
                            widget.product.inCart = false;
                          });
                        }
                      },
                      child:widget.product.inCart ? Icon(Icons.shopping_cart,color: mainColor) : Icon(petsco.MyFlutterApp.cart,color: mainColor)),
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(!widget.product.isFavourite){
                          widget.product.isFavourite = true;
                          }else {
                          widget.product.isFavourite = false;
                          }
                        });
                      },
                      child: Icon(Icons.delete_outline,color: Colors.red,)), 
                ],
              )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class FavourieCardBuilder extends StatelessWidget {
    final List<ProductModel> products ;
    FavourieCardBuilder(this.products);
  @override
  Widget build(BuildContext context) {
    return new ListView.builder
  (   
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      itemBuilder: (BuildContext ctxt, int index) {
       return new FavourieCard(products[index],index);
      }
  );
  }
}
