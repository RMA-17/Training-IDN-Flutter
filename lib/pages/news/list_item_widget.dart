import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'list_item_news.dart';

Widget listWidget(ListItemNews listItemNews) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    //Jika tidak ada ListView, maka kita bisa menggunakan SingleChildScrollView agar bisa widgetnya terscroll
    child: Card(
        elevation: 4,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                width: 80,
                height: 59,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(listItemNews.imgPath),
                        fit: BoxFit.cover))),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(listItemNews.title),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(Icons.person),
                  const SizedBox(width: 2),
                  Text(listItemNews.author),
                  const SizedBox(width: 15),
                  const Icon(Icons.date_range),
                  const SizedBox(width: 2),
                  Text(listItemNews.date),
                ],
              ),
            ],
          )
        ])),
  );
}
