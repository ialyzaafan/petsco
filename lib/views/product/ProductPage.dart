import 'package:flutter/material.dart';
import 'package:petsco/models/ColorModel.dart';
import 'package:petsco/models/ProductModel.dart';
import 'package:petsco/models/RatingModel.dart';
import 'package:petsco/models/SizeModel.dart';
import 'package:petsco/style.dart' as styles;
import 'package:petsco/views/product/ColorIndicator.dart';
import 'package:petsco/views/product/ProductScrollView.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../style.dart';
import 'ProductCard.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int rate = 0;
  Widget productView() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Select color", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ColorIndicator(colors)),
          ),
          Text("Select size", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: SizeIndicator(sizes)),
          ),
          Text("Select weight", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: WeightIndicator(weight)),
          ),
        ],
      ),
    );
  }

  Widget commentsView() {
    Widget widget;
    widget = Column(
      children: <Widget>[
        CommentView(ratings[0]),
        SizedBox(
          height: 10,
        ),
        CommentView(ratings[0]),
      ],
    );

    return widget;
  }

  Widget reviewView() {
    return Column(
      children: <Widget>[
        commentsView(),
        Center(
          child: FlatButton(
              onPressed: () {},
              child: Text(
                "View more",
                style: styles.smallGreenTextStyle,
              )),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            "Rate this product",
            style: styles.titleBlackTextStyle,
          ),
        ),
        RatingBar(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: styles.mainColor,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              elevation: 0,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 5,
                  decoration:
                      InputDecoration.collapsed(hintText: "Write your review"),
                ),
              )),
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            color: styles.mainColor,
            onPressed: () {},
            child: Text(
              "Send review",
              style: styles.smallWhiteTextButtonStyle,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        )
      ],
    );
  }

  Widget detailsView() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Description", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lo Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum LoLorem ipsum Lorem ipsum.",
                  style: styles.mediumSecondryColor,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                )),
          ),
          Text("Tags", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: tags
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(e),
                              ),
                            ),
                          ))
                      .toList(),
                )),
          ),
          Text("Flavor", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: [
                    "Lorem ipsum,",
                    "Lorem ipsum,",
                    "Lorem ipsum,",
                    "Lorem ipsum"
                  ]
                      .map((e) => Text(
                            e,
                            style: styles.mediumSecondryColor,
                          ))
                      .toList(),
                )),
          ),
          Text("Color", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: ["Red,", "Blue,", "Green,", "Yellow"]
                      .map((e) => Text(
                            e,
                            style: styles.mediumSecondryColor,
                          ))
                      .toList(),
                )),
          ),
          Text("Weight", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: ["200g,", "500g,", "kilo,"]
                      .map((e) => Text(
                            e,
                            style: styles.mediumSecondryColor,
                          ))
                      .toList(),
                )),
          ),
          Text("Category", style: styles.titleBlackTextStyle),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 8, bottom: 8),
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: ["Lorem Ipsum"]
                      .map((e) => Text(
                            e,
                            style: styles.mediumSecondryColor,
                          ))
                      .toList(),
                )),
          ),
        ],
      ),
    );
  }

  List<String> tags = [
    "category",
    "category",
    "category",
    "category",
    "category",
    "category",
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: styles.mainColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Dog dry food - Hills science diet",
          style: styles.mediumAppBarWhiteTextStyle,
          overflow: TextOverflow.clip,
        ),
      ),
      backgroundColor: styles.mainColor,
      body: Container(
        padding: EdgeInsets.only(top: 29),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xffF3FAEE),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: ProductScrollView(productArray[0]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: _selectedIndex == 0
                    ? 1500
                    : _selectedIndex == 1
                        ? 1800
                        : 1500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0))),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 12, right: 12, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = 0;
                                  });
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text("Product"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      color: _selectedIndex == 0
                                          ? styles.secondryColor
                                          : Colors.white,
                                      thickness: 1,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = 1;
                                  });
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text("Details"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      color: _selectedIndex == 1
                                          ? styles.secondryColor
                                          : Colors.white,
                                      thickness: 1,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = 2;
                                  });
                                },
                                child: Column(
                                  children: <Widget>[
                                    Text("Reviews"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      color: _selectedIndex == 2
                                          ? styles.secondryColor
                                          : Colors.white,
                                      thickness: 1,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 29.0, left: 12, right: 12, bottom: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _selectedIndex == 0
                                ? productView()
                                : _selectedIndex == 1
                                    ? detailsView()
                                    : reviewView(),
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Center(
                                  child: Text(
                                "Products you may like",
                                style: titleBlackTextStyle,
                              )),
                            ),
                            Center(
                              child: Container(
                                  padding: EdgeInsets.only(top: 24.0),
                                  child: Wrap(
                                    children: productWrapArray
                                        .map((e) => ProductCard(product: e))
                                        .toList(),
                                  )),
                            ),
                            Center(
                                child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      "SEE ALL",
                                      style: smallTextButtonStyle,
                                    )))
                          ],
                        ),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xffF3FAEE),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommentView extends StatelessWidget {
  final RatingModel review;
  CommentView(this.review);
  Widget ratingStars() {
    Widget widget;
    if (review.rate > 1 && review.rate < 2) {
      widget = Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
        ],
      );
    } else if (review.rate > 2 && review.rate < 3) {
      widget = Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
        ],
      );
    } else if (review.rate > 2 && review.rate < 3) {
      widget = Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
        ],
      );
    } else if (review.rate > 3 && review.rate < 4) {
      widget = Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star_border,
            color: styles.secondryColor,
          ),
        ],
      );
    } else {
      widget = Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
          Icon(
            Icons.star,
            color: styles.secondryColor,
          ),
        ],
      );
    }
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  child: Image.asset(review.imgURL),
                  radius: 25,
                  backgroundColor: styles.dogColor,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: <Widget>[
                    ratingStars(),
                    Text(review.user),
                  ],
                ),
              ],
            ),
            Text(
                "${review.date.year.toString()}-${review.date.month.toString().padLeft(2, '0')}-${review.date.day.toString().padLeft(2, '0')}",
                style: TextStyle(color: Colors.grey))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 70),
          child: Text(
            review.comment,
            style: TextStyle(color: styles.secondryColor),
          ),
        )
      ],
    );
  }
}

class CommentViewBuilder extends StatelessWidget {
  final List<RatingModel> comments;
  CommentViewBuilder({@required this.comments});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: comments.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: new CommentView(comments[index]),
            );
          }),
    );
  }
}
