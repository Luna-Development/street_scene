import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:street_scene/auth_service.dart';
import 'package:street_scene/models/user_model.dart';
import 'package:street_scene/screens/home_screen.dart';
import 'package:street_scene/screens/login_screen.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? const LoginScreen() : HomeScreen();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
