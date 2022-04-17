import 'package:flutter/material.dart';
import 'package:kliniku/components/main/pasien_menu/ListDokter.dart';

import 'model/categoriesModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(232, 255, 221, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            jadwalDokter(),
            SizedBox(height: 220),
            kategoriKlinik()
          ],
        ));
  }
}

Padding kategoriKlinik() {
  return Padding(
    padding: const EdgeInsets.all(28),
    child: Container(
      height: 200,
      child: Column(
        children: [
          Row(children: [
            Expanded(
                child: Text(
              "Kategori",
              style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
            )),
          ]),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: ((BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        width: 60,
                        height: 50,
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListDokter()),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                categories[index].image,
                                color: Colors.black,
                              ),
                              Flexible(
                                child: Text(
                                  categories[index].name,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        )),
                  );
                })),
          )
        ],
      ),
    ),
  );
}

Padding jadwalDokter() {
  return Padding(
    padding: EdgeInsets.only(left: 30, right: 10, top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Jadwal Dokter hari ini",
          style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
        )
      ],
    ),
  );
}
