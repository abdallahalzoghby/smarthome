import 'package:flutter/material.dart';
import 'package:final_project_2/welcome/WelcomesScreen.dart';
import 'package:final_project_2/welcome/home.dart';
import 'package:final_project_2/welcome/me.dart';
import 'package:final_project_2/menu/login.dart';
import 'package:final_project_2/menu/signin.dart';
import 'package:final_project_2/menu/setting.dart';
import 'package:final_project_2/menu/rate.dart';
import 'package:final_project_2/menu/terms_and_conditions.dart';
import 'package:final_project_2/menu/privacy_policy.dart';
import 'package:final_project_2/menu/help_and_notes.dart';
import 'package:final_project_2/device/add_device.dart';
import 'package:final_project_2/setting/region.dart';
import 'package:final_project_2/setting/language.dart';
import 'package:final_project_2/setting/smart_home_management.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/call_me': (context) => CallMeScreen(),
        '/login': (context) => LoginScreen(),
        '/signin': (context) => SignInScreen(),
        '/setting': (context) => SettingScreen(),
        '/rate': (context) => RateScreen(),
        '/terms_and_conditions': (context) => TermsAndConditionsScreen(),
        '/privacy_policy': (context) => PrivacyPolicyScreen(),
        '/help_and_notes': (context) => HelpAndNotesScreen(),
        '/add_device': (context) => AddDeviceScreen(),
        '/region': (context) => RegionScreen(),
        '/language': (context) => LanguageScreen(),
        '/smart_home_management': (context) => SmartHomeManagementScreen(),
      },
    );
  }
}