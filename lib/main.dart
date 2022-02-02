import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:street_scene/auth_service.dart';
import 'package:street_scene/screens/wrapper.dart';
import 'screens/screens.dart';
import 'package:street_scene/screens/home_screen.dart';
import 'package:street_scene/screens/login_screen.dart';
import 'package:street_scene/screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: MaterialApp(
        title: 'Street Scene',
        theme: ThemeData(primarySwatch: Colors.grey),
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:street_scene/pages/login_page.dart';
// import 'package:street_scene/pages/sign_up_page.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         home: LoginPage(),
//       );
// }


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
