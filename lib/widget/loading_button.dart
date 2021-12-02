import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salary/theme/theme.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 16,
                  width: 16,
                  child: const CircularProgressIndicator(
                      color: kWhiteColor,
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation(kWhiteColor))),
              Align(
                  alignment: Alignment.center,
                  child: Text('Loading...',
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: semiBold)))),
            ],
          ),
        ));
  }
}
