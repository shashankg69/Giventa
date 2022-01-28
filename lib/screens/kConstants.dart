import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// CONSTATN COLORS
const Color COLOR_BACKGROUND = Color(0xFFFAF5EB);
const Color COLOR_PRIMARY = Color(0xFFF6AF18);

const Color COLOR_BORDER_GREY = Color(0xFFE2E2E2);
const Color COLOR_SHADY_WHITE = Color(0xFFFCFCFC);

const Color COLOR_SEARCHBAR_GREY = Color(0xFFECECEC);
const Color COLOR_TEXT_PRIMARY = Color(0xFF54514B);
const Color COLOR_TEXT_GREY = Color(0xFF54514B);

// CONSTANT SVGs
final SvgPicture ICON_LOCATION_24 =
    SvgPicture.asset("assets/images/icons/location.svg", height: 24);

final SvgPicture ICON_LOCATION =
    SvgPicture.asset("assets/images/icons/location.svg", height: 17);

final SvgPicture ICON_NOTIFICATION =
    SvgPicture.asset("assets/images/icons/notification.svg", height: 26);

final SvgPicture ICON_SEARCH =
    SvgPicture.asset("assets/images/icons/search.svg", height: 26);

final SvgPicture ICON_CAT_VIDEOGAME =
    SvgPicture.asset("assets/images/categories/videoGame.svg", height: 24);

final SvgPicture ICON_CAT_MEDIA =
    SvgPicture.asset("assets/images/categories/camera.svg", height: 24);

final SvgPicture ICON_CAT_FITNESS =
    SvgPicture.asset("assets/images/categories/fitness.svg", height: 24);

final SvgPicture ICON_CAT_FASION =
    SvgPicture.asset("assets/images/categories/clothing.svg", height: 24);

final SvgPicture ICON_CAT_TRAVEL =
    SvgPicture.asset("assets/images/categories/travel.svg", height: 24);

final SvgPicture ICON_CAT_BOOKS =
    SvgPicture.asset("assets/images/categories/books.svg", height: 24);

final SvgPicture ICON_CAT_TOOLS =
    SvgPicture.asset("assets/images/categories/tools.svg", height: 24);

final SvgPicture ICON_CAT_ELECTRONICS =
    SvgPicture.asset("assets/images/categories/electronics.svg", height: 24);

final SizedBox ICON_MESSAGES = SizedBox(
  height: 26,
  width: 26,
  child: Image.asset('assets/images/icons/chat.png'),
);

// CONSTANTS FONTSTYLE

const TextStyle JK_14 = TextStyle(fontFamily: 'jk_med', fontSize: 14);

const TextStyle MT_M_12 =
    TextStyle(fontFamily: "mt_med", fontSize: 12, color: COLOR_TEXT_GREY);

const TextStyle MT_B_20 =
    TextStyle(fontFamily: 'mt_bold', fontSize: 20, color: COLOR_TEXT_GREY);

const TextStyle MT_B_16 =
    TextStyle(fontFamily: 'mt_bold', fontSize: 16, color: COLOR_TEXT_GREY);

const TextStyle MT_B_14 =
    TextStyle(fontFamily: 'mt_bold', fontSize: 14, color: COLOR_TEXT_GREY);
