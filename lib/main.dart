// ignore_for_file: prefer_const_constructors

import 'package:coin_convert/screens/coin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CoinConvert());
}

class CoinConvert extends StatelessWidget {
  const CoinConvert({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coin Convert",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CoinScreen(),
    );
  }
}
