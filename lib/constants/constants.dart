import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants{
  //bu sınıftan nesne üretilmesini istemediğimiz
  //için kurucu metodunu gizli yapıcaz
  Constants._();

  static const String title = "Pokedex";

  static TextStyle getTitleTextStyle(){
    return  TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48)
    );
  }

  static TextStyle getPokemonNameTextStyle(){
     return TextStyle(
       color: Colors.white,fontWeight: FontWeight.bold,fontSize:_calculateFontSize(30)
     );
  }

  static TextStyle getTypeChipTextStyle(){
    return TextStyle(
        color: Colors.white,fontSize:_calculateFontSize(20)
    );
  }

    static _calculateFontSize(int size){
    if(ScreenUtil().orientation == Orientation.portrait){
      return size.sp;
    }else{
      return (size*1.5).sp;
    }
  }

}