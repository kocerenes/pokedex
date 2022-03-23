import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/widgets/poke_img_and_ball.dart';

class PokeListItems extends StatelessWidget {
  final Pokedexx pokemon;

  const PokeListItems({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pokemon.name ?? 'N/A',style: Constants.getPokemonNameTextStyle(),),
            Chip(label: Text(pokemon.type![0],style: Constants.getTypeChipTextStyle(),)),
            Expanded(child: PokeImgAndBall(pokemon: pokemon)),
          ],
        ),
      ),
    );
  }
}
