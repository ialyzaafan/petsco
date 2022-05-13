
class SizeModel {
String size;
bool isSelected;
SizeModel(this.size,this.isSelected);  
}


List<SizeModel> sizes = [
  SizeModel( "XS" ,false),
  SizeModel( "S" ,false),
  SizeModel( "M" ,false),
  SizeModel( "L" ,false),
  SizeModel( "XL" ,false),
  SizeModel( "XXL" ,false),
];

List<SizeModel> weight = [
  SizeModel( "50 g" ,false),
  SizeModel( "100 g" ,false),
  SizeModel( "500 g" ,false),
  SizeModel( "1 kg" ,false),
];