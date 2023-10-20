import 'package:flutter/material.dart';
import 'package:tugas1/Detail/DetailPage.dart';
import 'package:tugas1/models/detailwisata.dart';

class KategoriDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: WisataData
          .trip.length, // Menggunakan panjang daftar dari WisataData.trip
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final wisata = WisataData.trip[index]; // Mengambil objek dari daftar

        return Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(),
                    ),
                  );
                },
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 240, 240),
                          image: DecorationImage(
                            image: NetworkImage(wisata
                                .icon), // Menggunakan ikon dari objek wisata
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            wisata.name, // Menggunakan nama dari objek wisata
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 85, 85, 85),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            wisata
                                .kategori, // Menggunakan kategori dari objek wisata
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 85, 85, 85),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
