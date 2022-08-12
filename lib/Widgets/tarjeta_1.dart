import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class Tarjeta_1 extends StatelessWidget {
  const Tarjeta_1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text("Titulo"),
          subtitle: Text(
              "Un punto  y coma (;) perdido puede ser un verdadero quebradero de cabeza”."),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Cancel"),
                
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Ok"),
                
              ),
            ],
          ),
        )
      ]),
    );
  }
}
