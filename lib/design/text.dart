import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_manager/design/colors.dart';

const double h1FontSize = 22.0;
const double h2FontSize = 18.0;
const double h3FontSize = 14.0;
const double h4FontSize = 12.0;

const double p3FontSize = 14.0;

Text header(
        {required String text,
        required String fontFamily,
        required double fontSize,
        required Color color}) =>
    Text(text.toUpperCase(),
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontFamily: fontFamily, fontSize: fontSize, color: color));

Text text_({required String text, required double fontSize}) => Text(text,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(fontSize: fontSize, color: const Color(white)));

Text headerTitle({required String text, required Color color}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Gunzo2',
    fontSize: h1FontSize,
    color: color);

Text headerText({required String text, required Color color}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Gunzo2',
    fontSize: h3FontSize,
    color: color);

Text h2Yellow({required String text}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Gunzo2',
    fontSize: h2FontSize,
    color: const Color(secondaryYellow));

Text h3Yellow({required String text}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Gunzo2',
    fontSize: h3FontSize,
    color: const Color(secondaryYellow));

Text h4Yellow({required String text}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Gunzo2',
    fontSize: h4FontSize,
    color: const Color(secondaryYellow));

Text h5Grey({required String text}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Adam',
    fontSize: h2FontSize,
    color: const Color(grey));

Text h5DarkGrey({required String text}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Adam',
    fontSize: h2FontSize,
    color: const Color(darkGrey));

Text h5Orange({required String text}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Adam',
    fontSize: h2FontSize,
    color: const Color(heatOrange));

Text h5Yellow({required String text}) => header(
    text: text.toUpperCase(),
    fontFamily: 'Adam',
    fontSize: h2FontSize,
    color: const Color(secondaryYellow));

Text p3({required String text}) => text_(text: text, fontSize: p3FontSize);
