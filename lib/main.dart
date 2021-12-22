import 'package:flutter/material.dart';
import 'package:street_scene/pages/login_page.dart';
import 'package:street_scene/pages/sign_up_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: SignUp(),
      );
}


// final urlImage = 'https://i.ytimg.com/vi/COgQUP8hvQY/maxresdefault.jpg';
// void main() => runApp(
//       MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.black,
//             title: const Text('Street Scene'),
//           ),
//           body: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: NetworkImage(urlImage), fit: BoxFit.cover),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => LoginPage(),
//                         ),
//                       );
//                     },
//                     child: Text('Click here'))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
