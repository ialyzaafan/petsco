import 'package:flutter/material.dart';
import 'package:petsco/models/DotsIndicator.dart';

import '../../style.dart';

/// An indicator showing the currently selected page of a PageController

class StepersPage extends StatefulWidget {
  @override
  State createState() => new _StepersPage();
}

class _StepersPage extends State<StepersPage> {
  final _controller = new PageController();

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  final List<Widget> _pages = <Widget>[
    new SteperView(
        imageURL: "assets/11.png",
        title: "All about your pets",
        description:
            "Lorem ipsum dolor sit amet, consectetur adi iscing elit. Vivamus tellus augue, consequat sit amet ultricies at, varius at erat. Pellentesque habitant morbi tristique senect us et netus et malesuada fames ac turpis egestas lorem ipsum.",
        buttonTxt: "Next",
        func: () {}),
    new SteperView(
        imageURL: "assets/12.png",
        title: "Offer and Gifts",
        description:
            "Lorem ipsum dolor sit amet, consectetur adi iscing elit. Vivamus tellus augue, consequat sit amet ultricies at, varius at erat. Pellentesque habitant morbi tristique senect us et netus et malesuada fames ac turpis egestas lorem ipsum.",
        buttonTxt: "Next",
        func: () {}),
    new SteperView(
        imageURL: "assets/13.png",
        title: "Shipping and Delivery",
        description:
            "Lorem ipsum dolor sit amet, consectetur adi iscing elit. Vivamus tellus augue, consequat sit amet ultricies at, varius at erat. Pellentesque habitant morbi tristique senect us et netus et malesuada fames ac turpis egestas lorem ipsum.",
        buttonTxt: "Start",
        func: () {})
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new IconTheme(
        data: new IconThemeData(color: _kArrowColor),
        child: new Stack(
          children: <Widget>[
            new PageView.builder(
              itemCount: _pages.length,
              physics: new AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 2 + 20,
              child: new Container(
                padding: const EdgeInsets.all(10.0),
                child: new Center(
                  child: new DotsIndicator(
                    controller: _controller,
                    itemCount: _pages.length,
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
      ),
    );
  }
}

class SteperView extends StatefulWidget {
  final String imageURL;
  final String title;
  final String description;
  final String buttonTxt;
  final Function func;
  SteperView(
      {@required this.imageURL,
      @required this.title,
      @required this.description,
      @required this.buttonTxt,
      @required this.func});
  @override
  State createState() => _SteperView();
}

class _SteperView extends State<SteperView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: Image.asset(widget.imageURL)),
            SizedBox(height: MediaQuery.of(context).size.height / 7),
            Text(
              widget.title,
              style: titleTextStyle,
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                widget.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                style: descriptionTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: smallTextButtonStyle,
                      )),
                  RaisedButton(
                    color: mainColor,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: Text(
                      widget.buttonTxt,
                      style: smallWhiteTextButtonStyle,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
