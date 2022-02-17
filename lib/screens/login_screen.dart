import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:street_scene/auth_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    const urlImage = 'https://i.ytimg.com/vi/COgQUP8hvQY/maxresdefault.jpg';

    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(urlImage), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/streetscenelogo.jpg',
              width: 300,
              height: 150,
              color: Colors.grey,
              colorBlendMode: BlendMode.darken,
            ),
            SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    labelText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Password"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                authService.signWithEmailAndPassword(
                    emailController.text, passwordController.text);
                Navigator.pushNamed(context, '/');
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
