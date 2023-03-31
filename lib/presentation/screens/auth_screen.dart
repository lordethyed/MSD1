import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:msd1/presentation/screens/bottom_navigation.dart';
import 'package:http/http.dart' as http;
import '../../routing/routing_const.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final dio = Dio();


  @override
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
            const SizedBox(
              height: 44,
            ),
            TextFormField(
              controller: loginController,
              decoration: const InputDecoration(
                hintText: "Логин",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xFF748DE8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xFF748DE8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: passwordController,
              //obscureText: true,
              decoration: const InputDecoration(
                hintText: "Пароль",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xFF748DE8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xFF748DE8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF4D67C3), // Background color
                ),
                onPressed: () async {
                  try {
                    dio.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
                    Response response = await dio.post(
                      'http://uvrcloud.kz/login.php?auth=1',
                      data: {
                        'login': loginController.text,
                        'password': passwordController.text,
                      },
                    );

                    if (kDebugMode) {
                      print(response);
                    }
                    Navigator.pushReplacementNamed(context, BottomRoute);
                  }on DioError catch (e) {
                    if (kDebugMode) {
                      print(e.response!.data);
                    }
                    rethrow;
                  }

                },
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
              onPressed: () {
                // Navigator.pushReplacementNamed(context, BottomRoute);
              },
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
