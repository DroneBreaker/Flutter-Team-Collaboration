import 'package:flutter/material.dart';
import 'package:team_collab/widgets/app-text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.amberAccent,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.red],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight)),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 60),
                const Center(
                    child: AppText(
                  text: 'Login to your Account',
                  size: 25,
                  color: Colors.white,
                )),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.] +@([\w-\.]+ \.)')
                              .hasMatch(value)) {
                        return 'Please enter correct name';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 30),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Email',
                        suffixIcon: const Icon(Icons.mail),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.5)),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 30),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Password',
                        suffixIcon: const Icon(Icons.lock),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.5)),
                  ),
                ),
                const SizedBox(height: 20),
                //submit button comes after this
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: const Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
