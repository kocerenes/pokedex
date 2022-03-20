import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';

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
        Align(
            alignment: Alignment.topLeft,
            child: Text(Constants.title, style: Constants.getTitleTextStyle())
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokemonImageUrl,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
