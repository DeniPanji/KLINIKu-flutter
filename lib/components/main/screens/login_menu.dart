import 'package:flutter/material.dart';
import 'package:kliniku/components/main/pasien_menu/home.dart';
import 'package:kliniku/components/main/screens/signup_menu.dart';

class LoginMenu extends StatefulWidget {
  LoginMenu({Key? key}) : super(key: key);

  @override
  State<LoginMenu> createState() => _LoginMenuState();
}

class _LoginMenuState extends State<LoginMenu> {
  // Form Key
  final _formKey = GlobalKey<FormState>();

  // Controller
  final emailControler = new TextEditingController();
  final passControler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Email Field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailControler,
      keyboardType: TextInputType.emailAddress,
      //validator: (){},
      onSaved: (value) {
        emailControler.text = value!;
      },
      textInputAction: TextInputAction.next,
      // Style
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Password Field
    final passField = TextFormField(
      autofocus: false,
      controller: passControler,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        passControler.text = value!;
      },
      textInputAction: TextInputAction.next,
      //style
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Button
    final loginBtn = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromRGBO(23, 152, 75, 1),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        minWidth: 200,
        // minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PasienMenu()));
        },
        child: Text(
          "MASUK",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 241, 195),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 192, 241, 195),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "LOG IN",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 6, 59, 8),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/icons/kliniku-logo.png",
                        width: 200,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Selamat datang kembali di\n aplikasi KLINIKu",
                      style: TextStyle(
                          color: Color.fromRGBO(44, 43, 43, 1),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito',
                          fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    emailField,
                    SizedBox(height: 20),
                    passField,
                    SizedBox(height: 20),
                    loginBtn,
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Belum punya akun? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupMenu()));
                          },
                          child: Text(
                            "DAFTAR",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
