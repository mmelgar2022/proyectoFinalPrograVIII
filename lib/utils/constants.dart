import 'package:flutter/material.dart';
import 'package:movies_app_flutter/screens/home_screen.dart';
import 'package:sizer/sizer.dart';

final GlobalKey<HomeScreenState> kHomeScreenKey = GlobalKey();

const kThemoviedbURL = "https://api.themoviedb.org/3/movie";
const kThemoviedbSearchURL = "https://api.themoviedb.org/3/search/movie";
const kThemoviedbImageURL = "https://image.tmdb.org/t/p/w300";
const kHomeScreenButtonFirstText = "Principal";
const kHomeScreenButtonFirstText1 = "Copañias";
const kHomeScreenButtonSecondText = "Proximamente";
const kHomeScreenButtonThirdText = "Lo Top";
const kHomeScreenTitleText = "NEFLIS UDEO";
const k404Text = "Aún no existen favoritos Compa....";
const kFavoriteRemovedText = "Aiios baby";
const kFavoriteAddedText = "Aqui toy";
const kDetailsScreenTitleText = "El resumeishon";
const kStoryLineTitleText = "Descripteishon";
const kSplashScreenTitleText = "No carga esta vaina..";
const kFinderScreenTitleText = "Buscáme";
const kFavoriteScreenTitleText = "Me encanta";
const kDrawerTitleFirstText = "Temeishon";
const kDrawerTitleSecondText = "PROYECTO PROGRA VIII";
const kAppliedTheme = "Theme applied";
const kNotFoundErrorText = "Not found";
const kDrawerAboutDescText =
    "Elaborado por:\n\t\n\tOlga Hinestroza \n\t1804002031\n\t \n\tBryan Tema\n\t1804002032 \n\t\n\t Mynor Vásquez\n\t150402003";
const kMainGreenColor = Color(0xFFFFFFFF);
const kMainOrangeColor = Color(0xFFE58901);
const kMainBlueColor = Color(0xFF292f33);
const kMainPinkColor = Color(0xFFE84CAF);
const kPrimaryColor = Color(0xFF141414);
const kLightGrey = Color(0xff141414);
const kAppBarColor = Color(0xFFE50914);
const kTextShadowColor = Color(0x4D000000);
const kBackgroundShadowColor = Color(0x4D161616);
const kDrawerLineColor = Color(0xFF707070);
const kInactiveButtonColor = Color(0xFF474747);
const kDrawerTextColor = Color(0xFFFFFFFFF);
const kSubTitleCardBoxColor = Color(0xFFFFFFFF);
const kSearchAppBarColor = Color(0xFFE50914);
const kLightRed = Color(0xFFE50914);

final kTextShadow = [
  Shadow(offset: Offset(0, 0.1.h), blurRadius: 6.0.sp, color: kTextShadowColor),
];

final kBoxShadow = [
  BoxShadow(
    color: kPrimaryColor,
    spreadRadius: 5,
    blurRadius: 30.sp,
    offset: Offset(0, 3),
  ),
];

final kHomeScreenButtonTextStyle = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.bold,
  shadows: kTextShadow,
);

final kBoldTitleTextStyle = TextStyle(
  fontSize: 12.sp,
  fontWeight: FontWeight.bold,
  shadows: kTextShadow,
);

final kTitleTextStyle = TextStyle(
  fontSize: 12.sp,
  shadows: kTextShadow,
);

final kDrawerDescTextStyle = TextStyle(
  fontSize: 14.sp,
  color: kDrawerTextColor,
  height: 0.19.h,
);

final kAppBarTitleTextStyle = TextStyle(
  fontSize: 28.sp,
  fontWeight: FontWeight.bold,
  shadows: kTextShadow,
);

final kSplashScreenTextStyle = TextStyle(
  fontSize: 12.0.sp,
  color: kLightGrey,
);

final kSubTitleCardBoxTextStyle = TextStyle(
  color: kSubTitleCardBoxColor,
  fontSize: 9.sp,
);

final kSmallAppBarTitleTextStyle = TextStyle(
  fontSize: 18.sp,
  fontWeight: FontWeight.bold,
);

final kSmallTitleTextStyle = TextStyle(fontSize: 18.sp);

final kTextFieldDecoration = InputDecoration(
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
);

final kMovieAppBarTitleTextStyle = TextStyle(fontSize: 22.sp);

final kDetailScreenBoldTitle = TextStyle(
  fontSize: 20.sp,
  fontWeight: FontWeight.bold,
);
final kDetailScreenRegularTitle = TextStyle(
  fontSize: 20.sp,
);
