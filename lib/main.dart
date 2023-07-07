import 'package:flutter/material.dart';

import 'coin_page.dart';

void main() {
  runApp(const CoinConvert());
}

class CoinConvert extends StatelessWidget {
  const CoinConvert({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Buy Coins",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurpleAccent.shade700,
        ),
      ),
      home: const CoinPage(),
    );
  }
}
