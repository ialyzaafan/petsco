import 'package:flutter/material.dart';
import 'package:petsco/models/ProductModel.dart';
import 'package:petsco/views/product/ProductCard.dart';

class ProductHorizontalBuilder extends StatelessWidget {
  final List<ProductModel> products ;
ProductHorizontalBuilder({
  @required this.products
});
    @override
  Widget build(BuildContext context) {
    return new ListView.builder
  (
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (BuildContext ctxt, int index) {
       return new ProductCard(product: products[index]);
      }
  );
  }
}