import 'pages/homePages/home.dart';
import 'pages/signUp.dart';
import 'pages/login.dart';
import 'pages/categoriesPage/categoriesList.dart';
import 'pages/forgotPassword.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignUpPage(),
        '/loginpage': (context) => const LoginPage(),
        '/forgotpassword': (context) => const ForgotPasswordPage(),
        '/home': (context) => const HomePage(),
        '/categoriesList':(context) => const CategoriesListPage()
      },
      //home: const Page(title: 'Connexion'),
      // home: HomePage(),
    );
  }
}
