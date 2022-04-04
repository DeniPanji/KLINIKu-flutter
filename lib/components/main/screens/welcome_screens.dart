import 'package:flutter/material.dart';
import 'package:kliniku/components/main/screens/login_menu.dart';
import 'package:kliniku/components/main/screens/signup_menu.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(192, 241, 195, 1),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 125)),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Image.asset('assets/icons/kliniku.png'),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 100),
                    width: 350,
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginMenu()));
                        },
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        color: const Color.fromRGBO(23, 152, 75, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 15),
                    width: 350,
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupMenu()));
                        },
                        child: Text(
                          "DAFTAR",
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        color: const Color.fromRGBO(23, 152, 75, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
