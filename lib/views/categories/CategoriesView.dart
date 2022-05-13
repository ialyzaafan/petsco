import 'package:flutter/material.dart';
import 'package:petsco/models/AnimalModel.dart';
import 'package:petsco/style.dart';
import '../../pre/my_flutter_app_icons.dart' as petsco;

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedIndex = 0;

  callback(index) {
        setState(() {
          currentSelectedIndex = index;
        });
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
              backgroundColor: mainColor,
              elevation: 0,
              centerTitle: true,
              title: Text("Categories",style: mediumAppBarWhiteTextStyle,),
              actions: <Widget>[
                IconButton(icon: Icon(petsco.MyFlutterApp.search__1_,color: Colors.white,), onPressed: (){
                  Navigator.pushNamed(context, "/search");

                })
              ],
            ),
            body: Container(
              padding: EdgeInsets.only(top: 30),
              child: Stack(
                children: <Widget>[
                                    Container(
                  
                                child: FavourieCardBuilder(animalArray,currentSelectedIndex,callback),
                  
                                 ),
                  
                                 Positioned(
                                   top: 0,
                                   right: 12,
                                   left: MediaQuery.of(context).size.width/2.5,
                                   bottom: 12,
                                                                    child: Container(
                  
                                child: CategorieBoxBuilder(animalArray[currentSelectedIndex].categories),
                  
                                   ),
                                 )
                ],
              ),
                decoration: BoxDecoration(
            color: Color(0xffF3FAEE),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
                ),
              ),
    ) ;
    
  }
}

class FavourieCardBuilder extends StatefulWidget {
    final List<AnimalModel> animals ;
    final Function(int) callback;
    int currentSelectedIndex;

    FavourieCardBuilder(this.animals, this.currentSelectedIndex,this.callback);

  @override
  _FavourieCardBuilderState createState() => _FavourieCardBuilderState();
}

class _FavourieCardBuilderState extends State<FavourieCardBuilder> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder
  (   
      scrollDirection: Axis.vertical,
      itemCount: widget.animals.length,
      itemBuilder: (BuildContext ctxt, int index) {
       return SideAnimalTab(
         onSelect: (){
           
           setState(() {
             widget.currentSelectedIndex = index;
           });
           widget.callback(widget.currentSelectedIndex);
         },
         name: widget.animals[index].name, 
         imgURL: widget.animals[index].imgURL, 
         isSelected: widget.currentSelectedIndex == index, 
         color: widget.animals[index].color,
         i: index, );
         
      }
  );
  }
}


class SideAnimalTab extends StatefulWidget {
  final bool isSelected;
  final String imgURL;
  final String name;
  final Color color;
  final VoidCallback onSelect;
  final int i;
  SideAnimalTab({
    @required this.name,
    @required this.imgURL,
    @required this.isSelected,
    @required this.color,
    @required this.i,
    @required this.onSelect
  });
  @override
  State<StatefulWidget> createState() => _SideAnimalTab();
}

class _SideAnimalTab extends State<SideAnimalTab> {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: widget.onSelect,
                 
                        child: new Container(
                   width: widget.isSelected ? MediaQuery.of(context).size.width / 2.8 : MediaQuery.of(context).size.width / 3.5 ,
                   height: 80,
                   child: Card(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: <Widget>[
                           Image.asset(widget.imgURL,width: 34.11,height: 26.24,),
                           Text(widget.name,style: smallWhiteTextButtonStyle,)
                         ],
                       ),
                     ),
                     color: widget.color,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.only(topRight: Radius.circular(13),bottomRight: Radius.circular(13))
                     ),
                   ),
                 ),
               ),
      ],
    ) ;
  }
}

class CategorieBox extends StatelessWidget {
 final String categorie;
  CategorieBox(this.categorie);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: (){},
              child: Container(
            color: Colors.transparent,
            height: 60,
            width: MediaQuery.of(context).size.width / 2 ,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.0)
              ),
              child: ListTile(
                leading: Text(categorie),
                trailing: CircleAvatar(
                  backgroundColor: secondryColor,
                  radius: 12,
                  child: Icon(Icons.chevron_right,color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    ) ;
  }
}

class CategorieBoxBuilder extends StatelessWidget {
    final List<AnimalCategory> categories ;
    CategorieBoxBuilder(this.categories);
  @override
  Widget build(BuildContext context) {
    return new ListView.builder
  (   
      scrollDirection: Axis.vertical,
      itemCount: categories.length,
      itemBuilder: (BuildContext ctxt, int index) {
       return new CategorieBox(categories[index].category);
      }
  );
  }
}