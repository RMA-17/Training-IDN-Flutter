import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:salary/provider/salary_provider.dart';
import 'package:salary/theme/theme.dart';

class SalaryPage extends StatelessWidget {
  const SalaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SalaryProvider salaryProvider = Provider.of<SalaryProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Data Karyawan',
              style: GoogleFonts.montserrat(fontSize: 20, color: primaryColor)),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: 67,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kWhiteColor,
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Text('${salaryProvider.data.id!}.'),
                      const SizedBox(width: 15),
                      Text(salaryProvider.data.namaKaryawan!),
                      const SizedBox(width: 50),
                      Text(salaryProvider.data.tanggalMasuk!),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/detail-salary');
                          },
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
