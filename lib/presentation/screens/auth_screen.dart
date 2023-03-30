import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
              "-=MSD1=-",
              style: TextStyle(
                fontFamily: "Roboto",
                color: Color(0xFF4D67C3),
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            TextFormField(
              controller: loginController,
              decoration: const InputDecoration(labelText: 'Логин'),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Пароль'),
            ),
            const SizedBox(
              height: 33,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width-40,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF4D67C3), // Background color
                ),
                onPressed: () {},
                child: const Text(
                    'Войти',
                  style: TextStyle(
                    fontFamily: "Roboto",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "забыли пароль?",
                style: TextStyle(
                  fontFamily: "Roboto",
                  color: Color(0xFF4D67C3),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            const Spacer(),
            const Text(
              "© 2010-2023 ТОО “Казниивх”",
              style: TextStyle(
                fontFamily: "Roboto",
                color: Color(0xFF4D67C3),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
