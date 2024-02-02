// import 'dart:convert';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:moovbe_project_flutter/bus_List.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    final String baseUrl = "http://flutter.noviindus.co.in/api/";
    final String loginApi = "LoginApi";

    final Map<String, dynamic> requestBody = {
      "username": usernameController.text.trim(),
      "password": passwordController.text.trim(),
    };

    try {
      final response = await http.post(
        Uri.parse(baseUrl + loginApi),
        body: jsonEncode(requestBody),
        headers: {
          "Content-Type": "application/json",
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic>? responseData = jsonDecode(response.body);

        if (responseData != null && responseData['status'] == true) {
          String apiKey = responseData['access'];
          String refreshToken = responseData['refresh'];

          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const BusAndDriver(),
          ));
        } else {
          print("Login failed. Incorrect credentials or other error.");
        }
      } else {
        print("Login failed. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error during login: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.black),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 150, bottom: 10),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 60, bottom: 45),
                  child: Text(" Manage your Bus and Drivers",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                    hintText: "enter username", suffixIcon: Icon(Icons.email)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "enter your password:",
                    suffixIcon: Icon(Icons.lock_outline_rounded)),
              ),
            ),
          ),
          const SizedBox(
            height: 220,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: InkWell(
                  onTap: login,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
