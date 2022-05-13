
import 'package:flutter/foundation.dart';

class ProductModel {
  int id;
  String name;
  String description;
  double price;
  List<String> imgURL;
  bool instock;
  double rating;
  bool isFavourite;
  bool inCart;
  String status;

  ProductModel({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.imgURL,
    @required this.inCart,
    @required this.instock,
    @required this.isFavourite,
    @required this.rating,
    @required this.status
  });
}

List<ProductModel> productArray = [
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/tuna.png","assets/tuna.png","assets/tuna.png","assets/tuna.png","assets/tuna.png",], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: "New"),
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/pr1.png"], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: "70% OFF"),
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/pr2.png"], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: ""),
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/tuna.png"], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: "New"),
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/tuna.png"], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: "New"),
];


List<ProductModel> productWrapArray = [
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/pr1.png"], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: "New"),
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/pr2.png"], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: "70% OFF"),
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/tuna.png"], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: ""),
  ProductModel(id: 1, 
  name: "Dog dry food - Hills science diet", 
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley", 
  price: 120.0, 
  imgURL: ["assets/pr1.png"], 
  inCart: false, 
  instock: false, 
  isFavourite: false, 
  rating: 3.3, 
  status: "New")
];