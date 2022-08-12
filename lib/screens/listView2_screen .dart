// ignore: file_names
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ["Batman", "Ironman", "Superman", "Thor"];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista #2'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(
                  options[i],
                ),
                textColor: Colors.black,
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.indigo,
                ),
                onTap: () {
                  final game = options[i];
                  // ignore: avoid_print
                  print(game);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
