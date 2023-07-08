// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({super.key});

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  late double _cryptoAmount = 0;
  String dropDownItem = "Ethereum";
  var chains = [
    "Ethereum",
    "Bitcoin",
    "Solana",
    "BNB",
    "EOS",
    "Avalanche",
    "Litecoin",
    "Monero",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coin Convert",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 1.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "\$${_cryptoAmount.round()}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.5,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.5),
            Slider(
              min: 0.0,
              max: 850.0,
              value: _cryptoAmount,
              activeColor: Colors.black,
              thumbColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _cryptoAmount = value;
                });
              },
            ),
            SizedBox(height: 12.5),
            DropdownButton(
              value: dropDownItem,
              icon: Icon(Icons.keyboard_arrow_down),
              items: chains.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownItem = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
