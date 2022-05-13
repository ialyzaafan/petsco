import 'package:flutter/material.dart';
import 'package:petsco/models/ProductModel.dart';
import 'package:petsco/style.dart' as styles;
import 'package:petsco/views/product/ProductCard.dart';

class ProductList extends StatelessWidget{
  List<ProductModel> products = productArray;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: styles.mainColor,
        centerTitle: true,
        title: Text("Products",style: styles.mediumAppBarWhiteTextStyle,),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 29,left: 12,bottom: 12,right: 12),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("245 results",style: styles.mediumSecondryColor,),
                    
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.filter),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.filter),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.filter),
                          ),
                        ],
                      )
                  ],
                ),
                SizedBox(height: 26,),
                Wrap(
                  children: products.map((e) => ProductCard(product: e)).toList(),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            color: Color(0xffF3FAEE),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
      ),
    );
  }
}