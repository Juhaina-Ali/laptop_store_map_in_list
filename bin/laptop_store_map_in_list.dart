import 'dart:io';

void main(){
  Map laptopInfo1 = {"laptopBrand":"lenovo","harddiskSize":"512 SDD","ram":"8 GB","processor":"Ryzen 5 6600HH","camera":"8 mg","price":600.0};
  Map laptopInfo2 = {"laptopBrand":"Hp","harddiskSize":"1 TB SSD","ram":"16 GB","processor":"core i7","camera":"8 mg","price":1000.0};
  Map laptopInfo3 = {"laptopBrand":"dell","harddiskSize":"512 HD","ram":"16 GB","processor":"Inter core i5","camera":"8 mg","price":800.0};

  List laptops = [laptopInfo1,laptopInfo2,laptopInfo3];
  print("Welcome to our laptops store : ");
  print("---------------------------------------------------------");
  for (var i in laptops) {
    print(i["laptopBrand"] + " : " + i["price"].toString() + " : " + i["harddiskSize"]+ " : " + i["ram"]+ " : " + i["processor"]+ " : " + i["camera"]);
  }
  print("---------------------------------------------------------");
  print("Enter yor budget : ");
  double? laptopBudget = double.tryParse(stdin.readLineSync() ?? "0");
  var newList = laptops.where((element) => element["price"] <= laptopBudget).toList();

  for (var e in newList) {
    print(e["laptopBrand"] + " : " + e["price"].toString());
  }

  // for (var element in laptops) {
  //   if(laptopBudget <= element["price"]){
  //     print(element["laptopBrand"]);
  //   }
  // }
}
