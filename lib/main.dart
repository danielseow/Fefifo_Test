import 'package:fefifo_test/pages/home.dart';
import 'package:fefifo_test/pages/login.dart';
import 'package:fefifo_test/pages/wallet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => const HomePage(),
        '/wallet': (context) => const WalletPage(),
      },
    );
  }
}
