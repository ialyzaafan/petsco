import 'package:flutter/material.dart';
import 'package:petsco/style.dart' as styles;
import '../../pre/my_flutter_app_icons.dart' as petsco;

class CategorieAnimal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.mainColor,
      appBar: AppBar(
        backgroundColor: styles.mainColor,
        elevation: 0,
        actions: <Widget>[
           IconButton(icon: Icon(petsco.MyFlutterApp.search__1_,color: Colors.white,), onPressed: (){
              Navigator.pushNamed(context, "/search");
            }),
            IconButton(icon: Icon(petsco.MyFlutterApp.path_1,color: Colors.white), onPressed: (){
              Navigator.pushNamed(context, '/notif');
            }),
        ],
        centerTitle: true,
      ),
      
    );
  }
}