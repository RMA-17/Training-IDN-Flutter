import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:salary/provider/salary_provider.dart';
import 'package:salary/theme/theme.dart';

class DetailSalary extends StatelessWidget {
  const DetailSalary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SalaryProvider salaryProvider = Provider.of<SalaryProvider>(context);
    int totalGaji = int.parse(salaryProvider.data.gaji![0].totalGaji!);

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
                salaryProvider.data.namaKaryawan!,
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
                          salaryProvider.data.namaKaryawan!,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          salaryProvider.data.namaKaryawan!,
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
                          salaryProvider.data.status!,
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
                          salaryProvider.data.nomorHP!,
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
                          salaryProvider.data.username!,
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
                          'Tanggal Masuk',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          salaryProvider.data.tanggalMasuk!,
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
                          'Total Gaji',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          NumberFormat.currency(name: 'IDR', symbol: 'Rp', decimalDigits: 0)
                              .format(totalGaji),
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
                          'Tanggal Gajian',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          salaryProvider.data.gaji![0].tanggalGajian!,
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
                          'Potongan',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          salaryProvider.data.gaji![0].potongan!,
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
