import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salary/pages/news/list_item_news.dart';
import 'package:salary/theme/theme.dart';

class DetailNews extends StatelessWidget {
  final ListItemNews itemNews;
  const DetailNews({Key? key, required this.itemNews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Image.asset(itemNews.imgPath,
                  height: 200, width: double.infinity, fit: BoxFit.cover),
              const SizedBox(height: 15),
              Text(itemNews.title,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          color: primaryColor,
                          fontWeight: semiBold))),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.person),
                    Text(itemNews.author,
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                color: primaryColor,
                                fontWeight: semiBold))),
                    const SizedBox(width: 40),
                    const Icon(Icons.date_range),
                    Text(itemNews.date)
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  itemNews.content,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          color: kBlack,
                          fontWeight: FontWeight.w400)),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: IconButton(
              onPressed: () {
                //.pop = navigateUp()
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new, color: kBlack),
            ),
          ),
        ]),
      ),
    ));
  }
}
