// ignore: file_names
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ["futbol", "basketball", "tennis", "bolleybol"];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista #1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.ballot),
                    ))
                .toList()
          ],
        ));
  }
}
