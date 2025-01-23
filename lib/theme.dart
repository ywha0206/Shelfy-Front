import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 텍스트 테마
TextTheme textTheme() {
  return TextTheme(
    // 가장 큰 제목 스타일
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    // 중간 크기의 제목 스타일
    displayMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    // 본문 텍스트 스타일 (기사, 설명)
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    // 부제목, 작은 본문 텍스트 스타일
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    // 중간 크기의 제목 스타일
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// AppBar 테마 설정
AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: const Color(0xFF4D77B2), // AppBar 배경색
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

// 바텀네비게이션바 테마 설정
BottomNavigationBarThemeData bottomNavigationBarTheme() {
  return BottomNavigationBarThemeData(
    backgroundColor: Colors.white, // BottomNavigationBar 배경색
    selectedItemColor: const Color(0xFF4D77B2), // 선택된 아이템 색상
    unselectedItemColor: Colors.grey.withOpacity(0.6), // 선택되지 않은 아이템 색상
    showUnselectedLabels: true, // 선택 안된 라벨 표시 여부 설정
  );
}

// 전체 ThemeData 설정
ThemeData mTheme() {
  return ThemeData(
    // 머터리얼 3 때부터 변경 됨..
    // 자동 셋팅
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)
    // 우리가 직접 지정 함
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ).copyWith(
      primary: const Color(0xFF4D77B2), // 주요 색상
      secondary: const Color(0xFF5B6A95), // 보조 색상
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
  );
}
