import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar"),
        actions: [
          // ignore: avoid_unnecessary_containers
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              child: const Text("SL"),
              backgroundColor: Colors.cyan[900],
            ),
          )
        ],
      ),
      body: const Center(
        child: Center(
          child: CircleAvatar(
            maxRadius: 100,
            backgroundImage: NetworkImage(
                "https://as.com/meristation/imagenes/2021/07/02/reportajes/1625238771_202608_1625238808_noticia_normal.jpg"),
          ),
        ),
      ),
    );
  }
}
