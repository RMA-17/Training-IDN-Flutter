import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Untuk mengatasi Overflow
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          //Buat gravity
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 129),
            Center(
              child: Text(
                'Masuk',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0E2392)),
                ),
              ),
            ),
            const SizedBox(
              height: 85,
            ),
            Text(
              'Username',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0E2392)),
              ),
            ),
            const SizedBox(height: 4),
            Container(
              //Menaruh Padding:
              padding: const EdgeInsets.only(left: 20),
              height: 43,
              //Box seperti card disini namanya BoxDecoration
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(
                      hintText: 'Tulis Username Kamu'),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text('Password',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0E2392)),
                )),
            const SizedBox(height: 4),
            Container(
                padding: const EdgeInsets.only(left: 20),
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: TextFormField(
                    //Untuk menyembunyikan password saat diisi:
                    obscureText: true,
                    decoration: const InputDecoration.collapsed(
                        hintText: 'Tulis Password Kamu'),
                  ),
                )),
            const SizedBox(
              height: 4,
            ),
            //Untuk memposisikan, macam gravity yang didalam gravity
            Align(
                alignment: Alignment.topRight,
                child: Text('Lupa Password?',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color(0xff0E2392),
                            fontWeight: FontWeight.w600)))),
            const SizedBox(height: 40),
            InkWell(
                child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff0E2392),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text('Masuk',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600))))),
                onTap: () {
                  Navigator.pushNamed(context, '/main-page');
                }),
          ],
        ),
      ),
    );
  }
}
