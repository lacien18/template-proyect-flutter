import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyect_template/core/resources/assets.dart';

 class StackDev {

  final stackDev = <Widget>[
    SvgPicture.asset(Assets.css, height: 50, key: const Key('css')),
    SvgPicture.asset(Assets.html, height: 50, key: const Key('html')),
    SvgPicture.asset(Assets.react, height: 50, key: const Key('react')),
    SvgPicture.asset(Assets.js, height: 50, key: const Key('js')),
    SvgPicture.asset(Assets.flutter, height: 50, key: const Key('flutter')),
    SvgPicture.asset(Assets.dart, height: 50, key: const Key('dart')),
  ];

}
