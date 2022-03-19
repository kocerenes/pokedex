import 'package:flutter/material.dart';

import '../model/pokemon.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

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
          return ListView.builder(
            itemCount: _list.length,
            itemBuilder: (contex, index) {
              var currentTimePokemon = _list[index];
              return ListTile(
                title: Text(currentTimePokemon.name.toString()),
              );
            },
          );
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
