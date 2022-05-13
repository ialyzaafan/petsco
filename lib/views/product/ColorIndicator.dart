import 'package:flutter/material.dart';
import 'package:petsco/models/ColorModel.dart';
import 'package:petsco/models/SizeModel.dart';
import 'package:petsco/style.dart';

class ColorIndicator extends StatefulWidget {
  List<ColorModel> colors;
  ColorIndicator(this.colors);
  @override
  State<StatefulWidget> createState() => _ColorIndicator();
}

class _ColorIndicator extends State<ColorIndicator> {
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              setState(() {
             currentSelectedIndex = index;
           });
            },
                      child: Container(
              width: 50,
              height: 50,
              color: Colors.transparent,
              child: Card(
                child: Center(
                  child: currentSelectedIndex == index ?Icon(Icons.done,color: Colors.white,): Text(""),
                ),
                color: widget.colors[index].color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
              ),
            ),
          );
        });
  }
}




class SizeIndicator extends StatefulWidget {
  List<SizeModel> sizes;
  SizeIndicator(this.sizes);
  @override
  State<StatefulWidget> createState() => _SizeIndicator();
}

class _SizeIndicator extends State<SizeIndicator> {
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.sizes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              setState(() {
             currentSelectedIndex = index;
           });
            },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 60,
              
             decoration: BoxDecoration(
               border: Border.all(color:currentSelectedIndex == index? Colors.transparent : Colors.grey),
               color: currentSelectedIndex == index ? mainColor : Colors.transparent,
               borderRadius: BorderRadius.circular(15)
             ),
              child: Center(child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(widget.sizes[index].size,style: TextStyle(fontSize: mediumTextSize,color: currentSelectedIndex == index ? Colors.white : Colors.grey),),
              )),
            ),
                      ),
          );
        });
  }
}




class WeightIndicator extends StatefulWidget {
  List<SizeModel> weights;
  WeightIndicator(this.weights);
  @override
  State<StatefulWidget> createState() => _WeightIndicator();
}

class _WeightIndicator extends State<WeightIndicator> {
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.weights.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              setState(() {
             currentSelectedIndex = index;
           });
            },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 70,
                          height: 30,
              
             decoration: BoxDecoration(
               border: Border.all(color:currentSelectedIndex == index? Colors.transparent : Colors.grey),
               color: currentSelectedIndex == index ? mainColor : Colors.transparent,
               borderRadius: BorderRadius.circular(15)
             ),
              child: Center(child: Text(widget.weights[index].size,style: TextStyle(fontSize: mediumTextSize,color: currentSelectedIndex == index ? Colors.white : Colors.grey),)),
            ),
                      ),
          );
        });
  }
}




