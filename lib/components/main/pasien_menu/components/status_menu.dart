import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(232, 255, 221, 1),
        // TODOs : Pake ListView Builder or Liat ListDokter bagian kategori
        body: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Status Jadwal Anda",
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.green[700],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Jadwal dengan dokter",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Dr. Yamato".toUpperCase(),
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 75, 174, 78),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/doctor-1.jpg"),
                        radius: 48,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            "Dokter Gigi",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Senin, April 21",
                              style: TextStyle(
                                  fontFamily: 'Roboto', color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.access_time_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "10:00 WIB ~ 11:00 WIB",
                              style: TextStyle(
                                  fontFamily: 'Roboto', color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 18,
                          width: 100,
                          color: Colors.yellow,
                          child: Text(
                            "proses".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(top: 15),
                          width: 200,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "CANCEL",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            color: const Color.fromRGBO(255, 0, 0, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
