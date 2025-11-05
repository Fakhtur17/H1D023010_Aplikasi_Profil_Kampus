import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter Campus',

      // 🔹 Tema utama (terang)
      theme: ThemeData(
        fontFamily: 'Poppins', // pastikan font didaftarkan di pubspec.yaml
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF9F9F9),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 3,
          shadowColor: Colors.black45,
        ),
        drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
        // 👉 gunakan CardThemeData (bukan CardTheme)
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14, height: 1.4),
        ),
      ),
      // 🌙 Tema gelap otomatis mengikuti sistem
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      themeMode: ThemeMode.system,

      // 🔹 Routing GetX
      initialRoute: Routes.home,
      getPages: AppPages.routes,

      // 🔹 Transisi halaman global (opsional)
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 250),

      // 🔹 Locale & fallback
      locale: const Locale('id', 'ID'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
