import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon.dart';

class PokeImgAndBall extends StatelessWidget {
  final Pokedexx pokemon;

  const PokeImgAndBall({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImage = "images/pokeball.png";

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImage,
            width: UIHelper.calculatePokeImgAndBallSize(),
            height: UIHelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pokemon.img ?? '',
            width: UIHelper.calculatePokeImgAndBallSize(),
            height: UIHelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context,url)=> const CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
