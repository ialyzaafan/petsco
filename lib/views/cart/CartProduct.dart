import 'package:flutter/material.dart';
import 'package:petsco/models/ProductModel.dart';
import 'package:petsco/style.dart';

class CartProduct extends StatefulWidget {
  final int index;
  final ProductModel product;
  CartProduct(this.product,this.index);
  @override
  State<StatefulWidget> createState() => _CartProduct(); 
}

class _CartProduct extends State<CartProduct> {

Color colorStatus(String status){
  Color color;
  if(status == "New") {
    color = Color(0xff8E53FC);
  } else if (status == "") {
    color = Colors.white;   
  }else {
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
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                    Container(
                      child: Center(child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(widget.product.status,style: smallWhiteTextButtonStyle,))),
                      height: 160.0,
                      width: 40,
                      decoration: BoxDecoration(
                        color: colorStatus(widget.product.status),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(13.0),bottomLeft: Radius.circular(13.0))
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(widget.product.imgURL[0],width: 91.5,),
                    ),
                    Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 8),
                                            child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Text(widget.product.name,style: descriptionTextStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("Size: 250 g" ,style: xSmallWhiteTextButtonStyle,),
                                SizedBox(width: 5,),
                                Text("Color: red", style: xSmallWhiteTextButtonStyle,),
                                SizedBox(width: 10,),
                                Icon(Icons.edit)
                                
                                
                              ],
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: (){
                                            setState(() {
                                              if(count > 1){
                                                  count =  count - 1;
                                              }
                                             
                                            });
                                        },
                                                                              child: CircleAvatar(
                                          backgroundColor: mainColor,
                                          radius: 15.0,
                                          child: Icon(Icons.remove,color: Colors.white,),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text("${this.count}",style: mediumSecondryColor,),
                                      SizedBox(width: 10,),

                                      InkWell(
                                        onTap: (){
                                            setState(() {
                                             count =  count + 1;
                                            });
                                        },
                                                                              child: CircleAvatar(
                                          backgroundColor: mainColor,
                                          radius: 15.0,
                                          child: Icon(Icons.add,color: Colors.white,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                          productArray.removeAt(widget.index);
                                        });
                                    },
                                    child: Icon(Icons.delete_outline,color: Colors.red,size: 30.0,))
                              ],
                            )
                        ],
                        
                      ),
                                          ),
                    )
              ],
            ),
          ),
        ) ;    
  }
}


class CartProductVerticalBuilder extends StatelessWidget {
  final List<ProductModel> products ;
CartProductVerticalBuilder({
  @required this.products
});
    @override
  Widget build(BuildContext context) {
    return new ListView.builder
  (   
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      itemBuilder: (BuildContext ctxt, int index) {
       return new CartProduct(products[index],index);
      }
  );
  }
}