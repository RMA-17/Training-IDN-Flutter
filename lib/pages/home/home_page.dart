import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      Stack(
        children: [
          Container(
            height: 200,
            //double.infinity = match_parent di xml
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 3)
              ],
              image: DecorationImage(
                  image: AssetImage('images/img_home.png'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 155, left: 20, right: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(15), right: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(2, 2))
                ],
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Selamat Datang',
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: const Color(0xff0E2392),
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 3),
                    Text('Fulan',
                        style: GoogleFonts.montserrat(
                            fontSize: 10,
                            color: const Color(0xff0E2392),
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total gaji bulan ini:',
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: const Color(0xff0E2392),
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 3),
                    Text('Rp. 10.000.000',
                        style: GoogleFonts.montserrat(
                            fontSize: 10,
                            color: const Color(0xff0E2392),
                            fontWeight: FontWeight.w600))
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text('Konten Harian',
            style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xff0E2392),
                fontWeight: FontWeight.w600)),
      ),
      const SizedBox(height: 20),
      CarouselSlider(
        options: CarouselOptions(
            height: 120,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 0.7,
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayCurve: Curves.fastOutSlowIn),
        items: [
          Container(
              //MediaQuery agar gambar responsif/mengikuti device
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage('images/img_konten.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Judul Konten'),
                    Text('Isi Konten'),
                  ])),
        ],
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text('Karyawan',
            style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xff0E2392),
                fontWeight: FontWeight.w600)),
      ),
      const SizedBox(height: 30),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width - 30,
          height: MediaQuery.of(context).size.width - 30,
          child: GridView.count(
            primary: false,
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.8,
            children: [
              buildCard('Babang', 'images/img_person.png', 'Backend Developer'),
              buildCard('Babang', 'images/img_person.png', 'Backend Developer'),
              buildCard('Babang', 'images/img_person.png', 'Backend Developer'),
              buildCard('Mamang', 'images/img_person.png', 'Frontend Developer')
            ],
          ))
    ]);
  }

  //Membuat Widget di Flutter sama seperti membuat function.
  Widget buildCard(String nama, String imgPath, String employee) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 5, left: 3, right: 3),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(blurRadius: 5, color: Colors.grey.withOpacity(0.2))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(employee,
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: const Color(0xff0E2392),
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover))),
            const SizedBox(height: 10),
            Text(nama,
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: const Color(0xff0E2392),
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
