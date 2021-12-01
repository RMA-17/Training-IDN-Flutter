import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/theme.dart';

//Pertama ketik stl, kalo error pencet Alt + enter.
//Setiap kita mau buat class, kita mau menambahkan statefull dan stateless
//Statefull = Layout yang datanya bisa berubah
//Stateless = Layout yang datanya tidak bisa berubah
//Scaffold
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//Tambahkan function bernama initState dengan ketik initState
  @override
  void initState() {
    super.initState();
    //Untuk setting timeout screen buat ke activity setelahnya
    Timer(const Duration(seconds: 5),
        () => Navigator.pushNamed(context, '/sign-in'));
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold = Kerangka
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        //Column ini untuk buat LinearLayout
        child: Column(
          //Mirip kayak in parent in parent gituh
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          //Karena Column ini pasti anaknya/widgetnya banyak/beranak banyak jadinya namanya bkn child, tapi children
          children: <Widget>[
            //Container gunanya untuk menampung, kayak liat kan di ImageView ada garis  luar gituh, nah itu namanya container di flutter
            Container(
              width: 93,
              height: 114,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('images/ic_splash.png')),
              ),
            ),
            const SizedBox(height: 60),
            Text(
              'Salary.id',
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 24,
                      //Karena semi-bold, makanya disetting w600
                      fontWeight: semiBold,
                      color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
