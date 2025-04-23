import 'package:flutter/material.dart';
import 'package:mobile/utils/app_palette.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: AppPalette.spaceCadet,
          secondary: AppPalette.coolGray,
          error: AppPalette.fireEngineRed,
          background: AppPalette.iceWhite,
          surface: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppPalette.spaceCadet),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Raleway',
        useMaterial3: true,
      ),

      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => HomeScreen(),
      },
      onUnknownRoute:
          (settings) =>
              MaterialPageRoute(builder: (context) => OnboardingScreen()),
    );
  }
}
