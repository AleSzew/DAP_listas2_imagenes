import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/entities/user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<User> users = [

    User(
      email: "ale@gmail.com",
      password: "szew",
    ),

    User(
      email: "ale.szew@gmail.com",
      password: "alejandro",
    ),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Login")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Contraseña",
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                bool encontrado = false;

                for (User u in users) {

                  if (
                    u.email == emailController.text &&
                    u.password == passwordController.text
                  ) {

                    encontrado = true;

                  }

                }

                if (encontrado) {

                  context.go('/players');

                } else {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Datos incorrectos"),
                    ),
                  );

                }

              },
              child: Text("Ingresar"),
            ),

          ],
        ),
      ),
    );
  }
}
