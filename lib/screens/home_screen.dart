import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:street_scene/models/car_model.dart';
import 'package:street_scene/models/utils.dart';
import 'package:street_scene/screens/selectedcard.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ShowCars> showcars = Utils.getShowCars();

  Future getCloudFirestoreUsers() async {
    print("getCloudFirestore");

    //assumes you have a collection called "users"
    FirebaseFirestore.instance.collection("users").get().then((querySnapshot) {
      print(querySnapshot.docs.length);

      List<ShowCars> allCars = [];

      querySnapshot.docs.forEach((value) {
        var carData = value.data();

        print(carData);
        var car = ShowCars.fromJson(carData);
        // ShowCars car = ShowCars(
        //     name: carData['name'],
        //     model: carData['engine'],
        //     imgName: carData['image']);

        allCars.add(car);
      });
      setState(() {
        showcars = allCars;
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  void initState() {
    super.initState();
    getCloudFirestoreUsers();
  }

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
                            showCars: showcars[index],
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

                            // ignore: avoid_print

                            // child: FutureBuilder<List<String>>(
                            //   future: getData(),
                            //   builder: (context, snapshot) {
                            //     List<String> carList =
                            //         snapshot.data ?? [];
                            //     if (snapshot.hasError)
                            //       print(snapshot.error);
                            //     return snapshot.hasData
                            //         ? ListView.builder(
                            //             itemCount: carList.length,
                            //             itemBuilder:
                            //                 (BuildContext context,
                            //                     int index) {
                            //               return ListTile(
                            //                 title: Text(carList[index]),
                            //               );
                            //             },
                            //           )
                            //         : Center(
                            //             child:
                            //                 CircularProgressIndicator(),
                            //           );
                            //   },
                            // )
                            child: Image.asset(
                              'assets/images/rx7.jpg',
                              fit: BoxFit.cover,
                            ),

                            // child: Image.asset(
                            //   'assets/images/' +
                            //       showcars[index].imgName +
                            //       '.jpg',
                            //   fit: BoxFit.cover,
                            // ),
                          )),
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
