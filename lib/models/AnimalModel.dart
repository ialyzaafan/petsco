
import 'package:flutter/material.dart';
import 'package:petsco/style.dart';

class AnimalModel {
    String name;
    String imgURL;
    Color color;
    bool isSelected;
    List<AnimalCategory> categories;
    AnimalModel({
      @required this.name,
      @required this.imgURL,
      @required this.color,
      @required this.categories,
      @required this.isSelected
      
    });
}

class AnimalCategory {
  String category;
  String categoryImg;
  AnimalCategory({
    @required this.category,
    @required this.categoryImg
  });
}
List<AnimalModel> animalArray = [
  AnimalModel(imgURL:"assets/dog.png" ,color: dogColor,name:"Dogs",categories: [
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
  ] ,isSelected: true),
  AnimalModel(imgURL:"assets/cat.png" ,color: catColor,name:"Cats",categories: [
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
  ] ,isSelected: false),
  AnimalModel(imgURL:"assets/bird.png" ,color: birdColor,name:"Birds",categories: [
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
  ] ,isSelected: false),
  AnimalModel(imgURL:"assets/fish.png" ,color: fishColor,name:"Fish",categories: [
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
  ] ,isSelected: false),
  AnimalModel(imgURL:"assets/small.png" ,color: smallColor,name:"Small Pets",categories: [
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
  ] ,isSelected: false),
  AnimalModel(imgURL:"assets/reptiles.png" ,color: reptilesColor,name:"Reptiles",categories: [
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
    AnimalCategory(category: "Food & Treats", categoryImg: "assets/dog.png"),
  ],isSelected: false ),
];