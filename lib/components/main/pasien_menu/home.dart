import 'package:flutter/material.dart';
import 'package:kliniku/components/main/pasien_menu/models/doctor.dart';

class PasienMenu extends StatefulWidget {
  PasienMenu({Key? key}) : super(key: key);

  @override
  State<PasienMenu> createState() => _PasienMenuState();
}

class _PasienMenuState extends State<PasienMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 255, 221, 1),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildAppBar(),
                    Padding(
                      padding: EdgeInsets.only(left: 14, right: 10, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Dokter yang beroperasi hari ini",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120,
                            margin: EdgeInsets.only(top: 10),
                            child: ListView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          size: 27,
          color: Colors.black,
        )),
    actions: <Widget>[
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications, size: 30, color: Colors.orange[700])),
    ],
  );
}
