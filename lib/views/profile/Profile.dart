import 'package:flutter/material.dart';
import 'package:petsco/style.dart' as styles;

class ProfileView extends StatelessWidget {
  Widget circle(String imgURl, String url, String title, Color color) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Image.asset(imgURl),
          backgroundColor: color,
          radius: 40.0,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: styles.descriptionTextStyle,
        )
      ],
    );
  }

  Widget box(context, title) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: Colors.transparent,
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 0,
          color: Color(0xffF2F9ED),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
          child: ListTile(
            leading: Text(title, style: styles.mediumSecondryColor),
            trailing: CircleAvatar(
              backgroundColor: styles.secondryColor,
              radius: 12,
              child: Icon(Icons.chevron_right, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: styles.mainColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Account",
          style: styles.mediumAppBarWhiteTextStyle,
        ),
      ),
      backgroundColor: styles.mainColor,
      body: Container(
        padding: EdgeInsets.only(top: 29),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 12.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          circle("assets/cat.png", "", "Profile",
                              styles.circleMove),
                          circle("assets/cat.png", "", "My Pets",
                              styles.circleBlue),
                          circle(
                              "assets/cat.png", "", "Orders", styles.circleRed),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      box(context, "Shipping Info"),
                      box(context, "Rating & Reviews"),
                      box(context, "Account Settings"),
                      box(context, "Help & Support"),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Rewards",
                        style: styles.mediumSecondryColor,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.0),
                                color: styles.mainColor),
                          ),
                          Positioned(
                              right: 10,
                              bottom: 0,
                              child: Image.asset("assets/gifts.png")),
                          Positioned(
                              left: 10,
                              bottom: 0,
                              top: 0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "540 Points = 54 L.E",
                                    style: styles.mediumAppBarWhiteTextStyle,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Opacity(
                                      opacity: 0.68,
                                      child: Text(
                                        "Expires on 30 March 2020",
                                        style: styles.xSmallTextButtonStyle,
                                      ))
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xffF3FAEE),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
      ),
    );
  }
}
