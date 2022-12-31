import 'package:flutter/material.dart';
import 'package:team_collab/pages/auth/login.dart';
import 'package:team_collab/pages/home.dart';
import 'package:team_collab/widgets/app-text.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeftWithFade,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
      ],
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const MainPage(),
    );
  }
}

//welcome page
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/welcome.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter)),
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 385.0),
                  child: AppText(
                    text: 'Make strong relationships with your team',
                    size: 28,
                    bold: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                AppText(
                    text: 'Description',
                    size: 14,
                    color: Colors.grey.withOpacity(0.5)),
                const SizedBox(height: 30),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          backgroundColor:
                              const Color.fromARGB(255, 17, 245, 28)),
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/login');
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          backgroundColor:
                              const Color.fromARGB(255, 9, 4, 255)),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
