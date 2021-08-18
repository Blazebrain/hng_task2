import 'package:flutter/material.dart';

//* COLORS
const themePrimaryColor = Color(0xFFFF5959);
const themeTextHeaderColor = Color(0xFF092C4C);
const themeTextBodyColor = Color(0xFF969696);
const themeTextGrey = Color(0xFFC7C6C6);
const themeGreen = Color(0xFF01B820);

//?
const backgroundWhite = Color(0xFFF7F8FA);
const backgroundBlack = Color(0xFF4A4A4A);
const errorRed = Color(0xFFE04F5F);
const successGreen = Color(0xFF3BB54A);
const inactiveGrey = Color(0xFFEEEEEE);
const textBlack = Color(0xFF333333);
const textWhite = Color(0xFFFFFFFF);
const lightBlueTextfieldColor = Color(0xFFC3E0EC);
const registerButtonColor = Color(0xFF338FB6);

//* Image Assets
const logoAsset = AssetImage('assets/hng_logo.png');

//* Input Decoration
const inputFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.fromLTRB(8, 14, 8, 0),
  isDense: true,
  filled: false,
  hintStyle: hintTextStyle,
  labelStyle: hintTextStyle,
  errorStyle: errorTextStyle,
  focusedBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  border: InputBorder.none,
);

//* TEXTSTYLES
const hintTextStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
);

const labelTextStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
);

const inputTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
);

const errorTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 12,
  color: errorRed,
);
