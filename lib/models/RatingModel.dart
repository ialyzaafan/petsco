import 'package:flutter/cupertino.dart';

class RatingModel {
  String user;
  String imgURL;
  String comment;
  DateTime date = DateTime.now();
  double rate;
  
  RatingModel({
    @required this.imgURL,
    @required this.user,
    @required this.comment,
    @required this.rate,
  });
}

List<RatingModel> ratings = [
  RatingModel(
    user: "Ahmed Mohamed",
    imgURL: "assets/pr1.png",
    comment: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lo Lorem ipsum Lorem ipsum Lor em ipsum Lorem ipsum",
    rate: 3.3,
      ),
    RatingModel(
    user: "Ahmed Mohamed",
    imgURL: "assets/pr1.png",
    comment: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lo Lorem ipsum Lorem ipsum Lor em ipsum Lorem ipsum",
    rate: 5,
      ),
    RatingModel(
    user: "Ahmed Mohamed",
    imgURL: "assets/pr1.png",
    comment: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lo Lorem ipsum Lorem ipsum Lor em ipsum Lorem ipsum",
    rate: 1.3,
      ),
    RatingModel(
    user: "Ahmed Mohamed",
    imgURL: "assets/pr1.png",
    comment: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lo Lorem ipsum Lorem ipsum Lor em ipsum Lorem ipsum",
    rate: 2.3,
      ),
  ];