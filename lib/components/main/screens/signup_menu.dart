import 'package:flutter/material.dart';
import 'package:kliniku/components/main/screens/login_menu.dart';

class SignupMenu extends StatefulWidget {
  SignupMenu({Key? key}) : super(key: key);

  @override
  State<SignupMenu> createState() => _SignupMenuState();
}

class _SignupMenuState extends State<SignupMenu> {
  // Form Key
  final _formKey = GlobalKey<FormState>();

  // Controller
  final nameController = new TextEditingController();
  final nikController = new TextEditingController();
  final addrController = new TextEditingController();
  final noController = new TextEditingController();
  final emailController = new TextEditingController();
  final passController = new TextEditingController();
  final confController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    //  Field nNme
    final nameField = TextFormField(
      autofocus: false,
      controller: nameController,
      keyboardType: TextInputType.name,
      //validator: (){},
      onSaved: (value) {
        nameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      // Style
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Nama",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Field NIK
    final nikField = TextFormField(
      autofocus: false,
      controller: nikController,
      //validator: (){},
      onSaved: (value) {
        nikController.text = value!;
      },
      textInputAction: TextInputAction.next,
      //style
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.contacts),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "NIK",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Field Address
    final addrField = TextFormField(
      autofocus: false,
      controller: addrController,
      //validator: (){},
      onSaved: (value) {
        addrController.text = value!;
      },
      textInputAction: TextInputAction.next,
      //style
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.home),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Alamat",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Field No HP
    final noField = TextFormField(
      autofocus: false,
      controller: noController,
      //validator: (){},
      onSaved: (value) {
        noController.text = value!;
      },
      textInputAction: TextInputAction.next,
      //style
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "No Handphone",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Field Email
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      //style
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Field Password
    final passField = TextFormField(
      autofocus: false,
      controller: passController,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        passController.text = value!;
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

    // Field Confirm Password
    final confField = TextFormField(
      autofocus: false,
      controller: confController,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        confController.text = value!;
      },
      textInputAction: TextInputAction.done,
      //style
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Ulangi Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Button
    final signUpBtn = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromRGBO(23, 152, 75, 1),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        minWidth: 200,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginMenu()));
        },
        child: Text(
          "DAFTAR",
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
                    SizedBox(height: 25),
                    Text(
                      "DAFTAR",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 6, 59, 8),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Masukan data diri anda untuk pendaftaran pada aplikasi",
                      style: TextStyle(
                          color: Color.fromRGBO(44, 43, 43, 1),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito',
                          fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    nameField,
                    SizedBox(height: 20),
                    nikField,
                    SizedBox(height: 20),
                    addrField,
                    SizedBox(height: 20),
                    noField,
                    SizedBox(height: 20),
                    emailField,
                    SizedBox(height: 20),
                    passField,
                    SizedBox(height: 20),
                    confField,
                    SizedBox(height: 20),
                    signUpBtn,
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Sudah punya akun? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginMenu()));
                          },
                          child: Text(
                            "LOG IN",
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
