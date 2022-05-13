import 'package:flutter/material.dart';
import 'package:petsco/models/ProductModel.dart';
import 'package:petsco/style.dart';
import 'package:petsco/views/product/ProductPage.dart';
import '../../pre/my_flutter_app_icons.dart' as petsco;

class ProductCard extends StatefulWidget {
  final ProductModel product;
  ProductCard({@required this.product});
  @override
  State createState() => _ProductCard();
}

class _ProductCard extends State<ProductCard> {
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ProductPage()));
      },
      onDoubleTap: () {
        setState(() {
          widget.product.isFavourite = true;
        });
      },
      child: Container(
        width: 150.0,
        height: 300.0,
        color: Colors.transparent,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                height: 30.0,
                decoration: BoxDecoration(
                    color: colorStatus(widget.product.status),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(13.0),
                        topLeft: Radius.circular(13.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.product.status,
                      style: smallWhiteTextButtonStyle,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      widget.product.imgURL[0],
                      fit: BoxFit.contain,
                      height: 128.5,
                    ),
                    Text(
                      widget.product.name,
                      style: descriptionTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "${widget.product.price} L.E",
                            style: smallGreenTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 15,
                                color: secondryColor,
                              ),
                              Text(
                                "${widget.product.rating}",
                                style: smallSecondryColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(Icons.share, color: mainColor),
                        InkWell(
                            onTap: () {
                              if (!widget.product.inCart) {
                                setState(() {
                                  widget.product.inCart = true;
                                });
                              } else {
                                setState(() {
                                  widget.product.inCart = false;
                                });
                              }
                            },
                            child: widget.product.inCart
                                ? Icon(Icons.shopping_cart, color: mainColor)
                                : Icon(petsco.MyFlutterApp.cart,
                                    color: mainColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                if (!widget.product.isFavourite) {
                                  widget.product.isFavourite = true;
                                } else {
                                  widget.product.isFavourite = false;
                                }
                              });
                            },
                            child: widget.product.isFavourite
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    petsco.MyFlutterApp.heart__1_,
                                    color: mainColor,
                                  )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
