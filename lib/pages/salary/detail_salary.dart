import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salary/theme/theme.dart';

class DetailSalary extends StatelessWidget {
  const DetailSalary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text('Detail - Penggajian'),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Mamang',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhiteColor,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2, color: Colors.grey, spreadRadius: 1)
                    ]),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Data Karyawan',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: primaryColor),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Nama Lengkap',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Fulan',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Jabatan',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Backend Developer',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Status',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Kontrak',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Nomor Handphone',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '0898121331415',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Username',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'fulan',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Tanggal Penggajian',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Nominal',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '2021-11-20',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Rp. 2,400,000',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '2021-11-20',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Rp. 400,000',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '2021-11-21',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Rp. 2,580,000',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
