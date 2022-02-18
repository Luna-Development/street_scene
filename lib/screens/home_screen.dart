import 'package:flutter/material.dart';
import 'package:street_scene/models/car_model.dart';
import 'package:street_scene/models/utils.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

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
                  return Container(
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
                        Row(
                          children: [
                            Text(
                              showcars[index].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // appBar: AppBar(
      //   title: Text(
      //     'Home',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   backgroundColor: Colors.black,
      // ),
      // body: Container(
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         fit: BoxFit.fill,
      //         image: NetworkImage(
      //             'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/tokyo-lights-armand-michel.jpg'),
      //         opacity: 0.8),
      //   ),
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: ListView(
      //           children: [
      //             Container(
      //               margin: const EdgeInsets.all(10),
      //               height: 200,
      //               padding: const EdgeInsets.all(20),
      //               child: Container(
      //                 decoration: const BoxDecoration(
      //                   image: DecorationImage(
      //                     fit: BoxFit.cover,
      //                     image: NetworkImage(
      //                         'https://miro.medium.com/max/1200/1*7H3hVeIz5U1Y0ri-JtptRA.jpeg'),
      //                   ),
      //                   color: Colors.black,
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(20),
      //                   ),
      //                 ),
      //                 child: Text('MEOW MEOW'),
      //               ),
      //             ),
      //             Container(
      //               margin: const EdgeInsets.all(10),
      //               height: 200,
      //               padding: const EdgeInsets.all(20),
      //               child: Container(
      //                 decoration: const BoxDecoration(
      //                   image: DecorationImage(
      //                     fit: BoxFit.cover,
      //                     image: NetworkImage(
      //                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEpfoTEcoPPP2IWTJ9oX_shpTcszxokI3gMQ&usqp=CAU'),
      //                   ),
      //                   color: Colors.black,
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(20),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               margin: const EdgeInsets.all(10),
      //               height: 200,
      //               padding: const EdgeInsets.all(20),
      //               child: Container(
      //                 decoration: const BoxDecoration(
      //                   image: DecorationImage(
      //                     fit: BoxFit.cover,
      //                     image: NetworkImage(
      //                         'https://cdna1.zoeysite.com/Adzpo594RQGDpLcjBynL1z/cache=expiry:31536000//auto_image/compress/https://s3.amazonaws.com/zcom-media/sites/a0iE000000GDpYmIAL/media/catalog/product/s/t/streetfighterla_bmw_e90_widebody_kit_dsg_performance_3.jpg'),
      //                   ),
      //                   color: Colors.black,
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(20),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               margin: const EdgeInsets.all(10),
      //               height: 200,
      //               padding: const EdgeInsets.all(20),
      //               child: Container(
      //                 decoration: const BoxDecoration(
      //                   image: DecorationImage(
      //                     fit: BoxFit.cover,
      //                     image: NetworkImage(
      //                         'https://www.tuningblog.eu/wp-content/uploads/2021/12/Toyota-Supra-Mk3-JZA70-VIP-Tuning-26.jpg'),
      //                   ),
      //                   color: Colors.black,
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(20),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Center(
      //         child: ElevatedButton(
      //           child: Text('Logout'),
      //           onPressed: () {
      //             Navigator.pushNamed(context, '/login');
      //           },
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
