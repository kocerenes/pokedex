
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokedex/model/pokemon.dart';

class PokedexAPI{
  static const String _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<Pokedexx>> getPokemonData() async{
    List<Pokedexx> _list = [];

    var result = await Dio().get(_url);
    var pokeList = jsonDecode(result.data)['pokemon'];

    if(pokeList is List){
      _list = pokeList.map((e) => Pokedexx.fromJson(e)).toList();
    }else{
      return [];
    }
    debugPrint(_list.first.name.toString());
    return _list;
  }
}