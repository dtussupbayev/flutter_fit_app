part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.midnightBlue,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.transparent,
      centerTitle: true,
      foregroundColor: AppColors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.black,
      unselectedItemColor: AppColors.midGrey,
    ),
  );
}
