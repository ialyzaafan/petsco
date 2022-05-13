import 'package:flutter/material.dart';
import 'package:petsco/models/AnimalModel.dart';
import 'package:petsco/models/ProductModel.dart';
import 'package:petsco/style.dart';
import 'package:petsco/views/home/homeAdvertise.dart';
import 'package:petsco/views/home/topCard.dart';
import 'package:petsco/views/product/ProductCard.dart';
import 'package:petsco/views/product/ProductHorizontalBuilder.dart';
import '../../pre/my_flutter_app_icons.dart' as petsco;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        title: Image.asset("assets/LogoInside.png"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                petsco.MyFlutterApp.search__1_,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/search");
              }),
          IconButton(
              icon: Icon(petsco.MyFlutterApp.path_1, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, '/notif');
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2520,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                ),
                // scroll card
                Positioned(
                  top: -80,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        height: 200,
                        width: dataSize.width,
                        child: TopCardBuilder(litems: animalArray),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250.0,
                        width: dataSize.width,
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          children: <Widget>[HomeAdvertise()],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2520,
                              decoration: BoxDecoration(
                                  color: Color(0xffF3FAEE),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0))),
                            ),
                            Container(
                              padding: EdgeInsets.all(12.0),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "New Arrivals",
                                          style: titleBlackTextStyle,
                                        ),
                                        FlatButton(
                                            onPressed: () {},
                                            child: Text(
                                              "SEE ALL",
                                              style: smallTextButtonStyle,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 300.0,
                                      child: ProductHorizontalBuilder(
                                        products: productArray,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Product on sale",
                                          style: titleBlackTextStyle,
                                        ),
                                        FlatButton(
                                            onPressed: () {},
                                            child: Text(
                                              "SEE ALL",
                                              style: smallTextButtonStyle,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 300.0,
                                      child: ProductHorizontalBuilder(
                                        products: productArray,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Best seller",
                                          style: titleBlackTextStyle,
                                        ),
                                        FlatButton(
                                            onPressed: () {},
                                            child: Text(
                                              "SEE ALL",
                                              style: smallTextButtonStyle,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 300.0,
                                      child: ProductHorizontalBuilder(
                                        products: productArray,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24),
                                    child: Container(
                                      width: dataSize.width - 20,
                                      height: 106.67,
                                      child: Card(
                                        child: Container(
                                          padding: EdgeInsets.all(12.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Icon(
                                                    petsco.MyFlutterApp.truck,
                                                    color: Colors.white,
                                                    size: 30.0,
                                                  ),
                                                  Text(
                                                    "Free Shipping",
                                                    style: mediumWhiteTextStyle,
                                                  )
                                                ],
                                              ),
                                              VerticalDivider(
                                                color: Colors.white,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Icon(
                                                    petsco.MyFlutterApp.gift,
                                                    color: Colors.white,
                                                    size: 30.0,
                                                  ),
                                                  Text(
                                                    "Free Gifts",
                                                    style: mediumWhiteTextStyle,
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              RaisedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "SEE MORE",
                                                  style: smallSecondryColor,
                                                ),
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              )
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(13.0),
                                              gradient: LinearGradient(colors: [
                                                Color(0xff016FB9),
                                                Color(0xff6A5AEB),
                                                Color(0xff8A54FA),
                                              ])),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(13.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24),
                                    child: Text(
                                      "Products you may like",
                                      style: titleBlackTextStyle,
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top: 24.0),
                                      child: Wrap(
                                        children: productWrapArray
                                            .map((e) => ProductCard(product: e))
                                            .toList(),
                                      )),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        "SEE ALL",
                                        style: smallTextButtonStyle,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
