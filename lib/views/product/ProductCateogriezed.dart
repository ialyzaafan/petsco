import 'package:flutter/material.dart';
import 'package:petsco/models/AnimalModel.dart';

import 'package:petsco/style.dart' as styles;

class Sample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: styles.mainColor,
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 200),
              pinned: true,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
              )
            ]))
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              color: styles.mainColor, borderRadius: BorderRadius.circular(0)),
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text(
              "MySliverAppBar",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 3 - shrinkOffset,
          left: 0,
          right: 0,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              color: Colors.transparent,
              elevation: 10,
              child: SizedBox(
                height: expandedHeight,
                child: IconContainer(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class IconContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Card(
          color: styles.dogColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/dog.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Dogs",
                style: styles.mediumWhiteTextStyle,
              )
            ],
          )),
    );
  }
}

class CategoryBox extends StatelessWidget {
  List<AnimalCategory> cateogries = [];
  CategoryBox({@required this.cateogries});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cateogries.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return new Container(
            width: 93.33,
            height: 133.33,
            child: Card(
              color: styles.dogColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      cateogries[index].categoryImg,
                      width: 31.48,
                      height: 31.48,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      cateogries[index].category,
                      style: styles.smallWhiteTextButtonStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
