import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kliniku/components/main/pasien_menu/home.dart';
import 'package:kliniku/components/onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kliniku/components/main/screens/login_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_core/firebase_core.dart';

int? isViewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('onBoard');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      home: LoginMenu(),
    );
  }
}
