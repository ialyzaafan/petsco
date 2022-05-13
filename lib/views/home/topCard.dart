import 'package:flutter/material.dart';
import 'package:petsco/models/AnimalModel.dart';
import 'package:petsco/style.dart';

class TopCard extends StatelessWidget {
  final String imgURL;
  final String name;
  final Color color;
  TopCard({@required this.imgURL, @required this.name, @required this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/animalCat');
      },
      child: Container(
        width: 133,
        height: 200,
        color: Colors.transparent,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: color,
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(imgURL,
                      width: 86.67, height: 66.67, fit: BoxFit.fill),
                  Text(
                    name,
                    style: mediumWhiteTextStyle,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopCardBuilder extends StatelessWidget {
  final List<AnimalModel> litems;
  TopCardBuilder({@required this.litems});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: litems.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return new TopCard(
              imgURL: litems[index].imgURL,
              name: litems[index].name,
              color: litems[index].color);
        });
  }
}
