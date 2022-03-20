import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants{
  //bu sınıftan nesne üretilmesini istemediğimiz
  //için kurucu metodunu gizli yapıcaz
  Constants._();

  static const String title = "Pokedex";

  static TextStyle getTitleTextStyle(){
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48
    );
  }

}