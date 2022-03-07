import 'package:flutter/material.dart';
import 'package:street_scene/models/car_model.dart';

class SelectedCard extends StatelessWidget {
  ShowCars showCars;

  SelectedCard({required this.showCars});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(showCars.name),
      ),
      body: Container(
        child: Image.asset(
          'assets/images/' + showCars.imgName + '.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
