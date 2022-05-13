
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAdvertise extends StatelessWidget{
 final List<String> advertisingImgs = ["assets/slider1.jpg","assets/slider2.jpg"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: new ListView.builder
  ( 
      scrollDirection: Axis.horizontal,
      itemCount: advertisingImgs.length,
      itemBuilder: (BuildContext ctxt, int index) {
       return new Container(
         height: 200.0,
         color: Colors.transparent,
         child: Card(
           elevation: 3,
           child: ClipRRect(
             borderRadius: BorderRadius.circular(20.0),
             child: Image.asset(advertisingImgs[index],fit: BoxFit.cover,)),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20.0)
           ),
         ),
       );
      }
  ),
    );
  }
}