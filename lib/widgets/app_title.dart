import 'package:flutter/material.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  _AppTitleState createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokemonImageUrl = 'images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(alignment: Alignment.topLeft, child: Text("Pokedex")),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokemonImageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
