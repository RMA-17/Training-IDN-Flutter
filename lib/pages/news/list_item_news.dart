//Kelas in berfungsi sebagai model dari klas news page
//Yang mana datanya akan dipakai oleh news page.

//Membuat class di flutter
class ListItemNews {
  String imgPath;
  String title;
  String author;
  String date;
  String content;

  ListItemNews(
      {required this.imgPath,
      required this.title,
      required this.author,
      required this.date,
      required this.content});
}
