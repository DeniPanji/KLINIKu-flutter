import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kliniku/components/main/pasien_menu/home.dart';
import 'package:kliniku/components/onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('onBoard');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KLINIKu',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: const Color.fromRGBO(23, 152, 75, 1))),
      // home: isViewed != 0 ? OnBoard() : WelcomeScreen(),
      home: MenuPasien(),
    );
  }
}
