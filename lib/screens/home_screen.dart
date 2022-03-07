import 'package:flutter/material.dart';
import 'package:street_scene/models/car_model.dart';
import 'package:street_scene/models/utils.dart';
import 'package:street_scene/screens/selectedcard.dart';

class HomeScreen extends StatelessWidget {
  List<ShowCars> showcars = Utils.getShowCars();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                'Orlando Car Scene',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: showcars.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectedCard(
                            showCars: this.showcars[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: 150,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/' +
                                    showcars[index].imgName +
                                    '.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withOpacity(0.7),
                                      Colors.transparent
                                    ]),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Row(
                              children: [
                                Text(
                                  showcars[index].name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
