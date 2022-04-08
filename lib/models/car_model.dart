import 'dart:ui';

class ShowCars {
  String name;
  String model;
  String imgName;

  ShowCars({
    required this.name,
    required this.model,
    required this.imgName,
  });
  ShowCars.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        model = json['engine'],
        imgName = json['image'];
}
