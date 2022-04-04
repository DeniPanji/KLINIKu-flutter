import 'package:flutter/material.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: <Widget>[_buildAppBar()],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 35, right: 10, top: 10),
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
              ],
            ),
          ),
          SizedBox(height: 150),
          Padding(
            padding: EdgeInsets.only(left: 35, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Kategori",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 130,
            margin: EdgeInsets.only(top: 20, left: 25),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                categoryK('assets/icons/eye.png', 'Dokter Mata', '1 Dokter'),
                categoryK('assets/icons/eye.png', 'Dokter Gigi', '1 Dokter'),
                categoryK('assets/icons/eye.png', 'Dokter Jantung', '1 Dokter'),
                categoryK(
                    'assets/icons/eye.png', 'Dokter Mata-mata', '1 Dokter'),
              ],
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: EdgeInsets.only(left: 35, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your Appointment",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
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

Widget categoryK(String img, String name, String drQty) {
  return Container(
    width: 120,
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: Color(0xff107163),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Image.asset(img),
          height: 50,
        ),
        Container(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: Color(0xffd9fffa).withOpacity(0.07),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            drQty,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ],
    ),
  );
}
