import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/tokyo-lights-armand-michel.jpg'),
              opacity: 0.8),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://miro.medium.com/max/1200/1*7H3hVeIz5U1Y0ri-JtptRA.jpeg'),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text('MEOW MEOW'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEpfoTEcoPPP2IWTJ9oX_shpTcszxokI3gMQ&usqp=CAU'),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://cdna1.zoeysite.com/Adzpo594RQGDpLcjBynL1z/cache=expiry:31536000//auto_image/compress/https://s3.amazonaws.com/zcom-media/sites/a0iE000000GDpYmIAL/media/catalog/product/s/t/streetfighterla_bmw_e90_widebody_kit_dsg_performance_3.jpg'),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://www.tuningblog.eu/wp-content/uploads/2021/12/Toyota-Supra-Mk3-JZA70-VIP-Tuning-26.jpg'),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            //   height: 200,

            //   // List view is perfect for large amount of widgets

            //   child: ListView.separated(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 6,
            //     separatorBuilder: (context, _) => SizedBox(
            //       width: 12,
            //     ),
            //     itemBuilder: (context, index) => buildCard(),
            //   ),
            // ),
            Center(
              child: ElevatedButton(
                child: Text('Logout'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCard() => Container(
        width: 200,
        height: 200,
        color: Colors.black,
        child: Column(
          children: [
            Image.network(
                'https://cdna1.zoeysite.com/Adzpo594RQGDpLcjBynL1z/cache=expiry:31536000//auto_image/compress/https://s3.amazonaws.com/zcom-media/sites/a0iE000000GDpYmIAL/media/catalog/product/s/t/streetfighterla_bmw_e90_widebody_kit_dsg_performance_3.jpg'),
          ],
        ),
      );
}

// class VerticalPages extends StatefulWidget {
//   const VerticalPages({Key? key}) : super(key: key);

//   @override
//   _VerticalPagesState createState() => _VerticalPagesState();
// }

// class _VerticalPagesState extends State<VerticalPages> {
//   final List<String> titles = ["mew ", "meow", "meow", "meow"];

//   final List<String> imageList = [
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX2WYajPJ6bV0zN2qaWRhpr4iJU757Ydzdvg&usqp=CAU",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEpfoTEcoPPP2IWTJ9oX_shpTcszxokI3gMQ&usqp=CAU",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHY7ifN-NBWq3xSN9HaM35Dy-w3NZMRsSwSg&usqp=CAU",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ocbEkxeX-aFJQ5YJKLIz85HfLaWOwJRVEQ&usqp=CAU",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> images = imageList.map((image) {
//       return Container(
//         decoration: BoxDecoration(
//             color: Colors.black45,
//             image:
//                 DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
//             borderRadius: BorderRadius.circular(10)),
//       );
//     }).toList();

//     return SafeArea(
//       child: VerticalCardPager(
//         titles: titles,
//         images: images,
//         textStyle: TextStyle(fontSize: 14, color: Colors.white),
//       ),
//     );
//   }
// }

