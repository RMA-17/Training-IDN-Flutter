import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salary/model/news.dart';

Widget listWidget(BeritaModel listItemNews) {
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
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/200/300?grayscale'),
                        fit: BoxFit.cover))),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(listItemNews.judulBerita!),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(Icons.person),
                  const SizedBox(width: 2),
                  Text(listItemNews.penerbit!),
                  const SizedBox(width: 15),
                  const Icon(Icons.date_range),
                  const SizedBox(width: 2),
                  Text(listItemNews.tanggalTerbit!),
                ],
              ),
            ],
          )
        ])),
  );
}
