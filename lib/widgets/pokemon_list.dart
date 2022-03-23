import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/widgets/pokelist_items.dart';

import '../model/pokemon.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
   PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<Pokedexx>> _pokemonListFuture;

  //bir kere çalışır
  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokedexAPI.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokedexx>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Pokedexx> _list = snapshot.data!;
          return GridView.builder(
            itemCount: _list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) => PokeListItems(
                    pokemon: _list[index],
                  ));
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Hata cikti"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
