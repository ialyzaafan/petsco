import 'package:flutter/material.dart';
import 'package:petsco/models/DotsIndicator.dart';
import 'package:petsco/models/ProductModel.dart';
import '../../style.dart';
import '../../pre/my_flutter_app_icons.dart' as petsco;


class ProductScrollView extends StatefulWidget {
    ProductModel product;
    ProductScrollView(this.product);
  @override
  _ProductScrollViewState createState() => _ProductScrollViewState();
}

class _ProductScrollViewState extends State<ProductScrollView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      height: 350,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
                ProductScroll(widget.product.imgURL),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text("130 L.E", style: smallGreenTextStyle,),
                              SizedBox(width: 10,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star,size: 15,color: secondryColor,),
                              Text("3.3",style: smallSecondryColor,)
                                ],
                              )
                            ],
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                                Icon(Icons.share,color: mainColor),
                              SizedBox(width: 20,),
                      
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
                              SizedBox(width: 20,),
                      
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
                        child: widget.product.isFavourite ? Icon(Icons.favorite,color: Colors.red,) : Icon(petsco.MyFlutterApp.heart__1_,color: mainColor,)), 
                        
                  
                          ],
                        )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    ) ;
  }
}





class ProductScroll extends StatefulWidget {
    final List<String> _images ;
    ProductScroll(this._images);
  @override
  State createState() => new _ProductScroll();
}

class _ProductScroll extends State<ProductScroll> {

  final _controller = new PageController();

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);


  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265.5,
      width: 211.5,
      child: new Stack(
        children: <Widget>[
          Container(
            height: 244.5,
            width: 211.5,
          ),
          new PageView.builder(
            itemCount: widget._images.length,
            physics: new AlwaysScrollableScrollPhysics(),
            controller: _controller,
            itemBuilder: (BuildContext context, int index) {
              return ProductImageView(imageURL: widget._images[index]);
            },
          ),
          Positioned(
            top: 230,
            left: 0,
            right: 0,
            bottom: 0,
                        child: new Container(
                          width: 211.5,
                          height: 244.5,
              padding: const EdgeInsets.all(10.0),
              child: new Center(
                child: new DotsIndicator(
                  controller: _controller,
                  itemCount: widget._images.length,
                  onPageSelected: (int page) {
                    _controller.animateToPage(
                      page,
                      duration: _kDuration,
                      curve: _kCurve,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductImageView extends StatefulWidget{
 final String imageURL;

  ProductImageView({
    @required this.imageURL,

  });
@override
  State createState() => _ProductImageView();
}

class _ProductImageView extends State<ProductImageView>{
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 211.5,
      height: 265.5,
      child:Column(
        children: <Widget>[
          SizedBox(height: 15,),
          Image.asset(widget.imageURL,height: 211.5,width: 211.5,fit: BoxFit.contain,),
          SizedBox(height: 30,)
        ],
      ) ,
    ) ;
  }
}