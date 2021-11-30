import 'package:flutter/material.dart';
import 'pages/auth/signin_page.dart';
import 'pages/home/home_page.dart';
import 'pages/main_page.dart';
import 'pages/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salary.id',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Untuk menentukan startActivity, btw disini g ada activity, yang ada hanyalah Class
      debugShowCheckedModeBanner: false,
      //Untuk sebagai Navigation. Ini sebenernya kita buat rute untuk program kemana arahnya akan berjalan
      routes: {
        '/': (context) =>
            const SplashScreen(), //artinya: jika nama rute nya /, maka akan ke SplashScreen
        '/home': (context) =>
            const HomePage(), //dan khusus untuk rute pertama, namanya harus '/' yang lain bebas.
        '/sign-in': (context) => const SignInPage(),
        '/main-page': (context) => const MainPage()
      },
    );
  }
}
