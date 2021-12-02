import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:salary/provider/auth_provider.dart';
import 'package:salary/widget/loading_button.dart';

import '../../theme/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //variable untuk menampung EditText.
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    //handleLogin adalah function asycronous
    handleLogin() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.login(
          username: usernameController.text,
          password: passwordController.text)) {
        Navigator.pushNamed(context, '/main-page');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: primaryColor,
            content: Text("Gagal Login! Periksa username anda!",
                textAlign: TextAlign.center)));
      }

      setState(() {
        isLoading = false;
      });
    }

    //Untuk menambahkan variable, maka ketiknya diatas return
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
                      fontWeight: semiBold,
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
                    fontWeight: semiBold,
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
                  //Untuk menerima inputan:
                  controller: usernameController,
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
                      fontWeight: semiBold,
                      color: Color(0xff0E2392)),
                )),
            //Made by Raka M.A
            const SizedBox(height: 4),
            Container(
                padding: const EdgeInsets.only(left: 20),
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: TextFormField(
                    controller: passwordController,
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
                            color: primaryColor, fontWeight: semiBold)))),
            const SizedBox(height: 40),
            InkWell(
                child: isLoading
                    ? const LoadingButton()
                    : Container(
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primaryColor,
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('Masuk',
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: semiBold))))),
                onTap: handleLogin),
          ],
        ),
      ),
    );
  }
}
