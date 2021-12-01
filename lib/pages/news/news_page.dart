import 'package:flutter/material.dart';
import 'package:salary/pages/news/detail_news.dart';

import 'list_item_news.dart';
import 'list_item_widget.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final List<ListItemNews> _listItem = [
    ListItemNews(
        imgPath: 'images/img_news.jpeg',
        title: 'Bersama Babang Merusak Negeri',
        author: 'MamangPost',
        date: '2021-22-10',
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,\n but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing \n Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum slkl;asdf;asdl;falskdflaskdjfldaskjflsdjflksdjaflkajsdflkjsda;fj pookoknya ayo hancurkan negeri ini!"),
    ListItemNews(
        imgPath: 'images/img_news.jpeg',
        title: 'Bersama Mamang membangun Negeri',
        author: 'MamangPost',
        date: '2021-24-1',
        content:
            'Halo mamang disini! mari kita bersihkan kekacauan yang dibuat oleh Babang!'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //Jika ingin membangun ListView atau menggunakan ListView.builder maka harus memasukkan itemCount dahulu baru index nya bisa kebaca
      itemCount: _listItem.length,
      itemBuilder: (context, index) {
        var berita = _listItem[index];
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailNews(itemNews: berita)));
            },
            child: listWidget(_listItem[index]));
      },
    );
  }
}
