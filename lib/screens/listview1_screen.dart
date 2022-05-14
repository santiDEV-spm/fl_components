import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView Tipo 1')),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                    title: Text(game),
                    leading: const Icon(Icons.gamepad_outlined),
                    trailing: const Icon(Icons.arrow_forward_ios)))
                .toList(),
          ],
        ));
  }
}
