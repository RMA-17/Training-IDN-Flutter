import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:salary/model/login_karyawan.dart';
import 'package:salary/provider/auth_provider.dart';

import '../theme/theme.dart';
import 'home/home_page.dart';
import 'news/news_page.dart';
import 'profile/profile_page.dart';
import 'salary/salary_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    //Generate 4 batang tab ketika baru mulai
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (_tabController!.index) {
            case 0:
              appBarTitle = 'Salary.id';
              break;
            case 1:
              appBarTitle = 'Penggajian';
              break;
            case 2:
              appBarTitle = 'Berita';
              break;
            case 3:
              appBarTitle = 'Profile';
              break;
          }
        });
      });
  }

  TabController? _tabController;
  var appBarTitle = 'Salary.id';

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    LoginKaryawanModel loginKaryawanModel = authProvider.loginKaryawanModel;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            appBarTitle,
            style: GoogleFonts.montserrat(
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          //Untuk menjadikan si title ada di tengah
          centerTitle: true),
      drawer: Drawer(
        child: Material(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              const SizedBox(height: 35),
              //Row = LinearLayout Horizontal
              Row(
                children: [
                  //Menambahkan gambar langsung rounded/lingkaran
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('images/img_profile.png'),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(loginKaryawanModel.namaKaryawan!,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 15, color: primaryColor),
                          )),
                      Text(loginKaryawanModel.status!,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 15, color: primaryColor),
                          ))
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              //Untuk menambahkan Divider
              const Divider(
                thickness: 2,
              ),
              ListTile(
                leading: const Icon(
                  Icons.help_center_outlined,
                  color: primaryColor,
                ),
                title: Text('Tentang Kami',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(color: primaryColor),
                    )),
                onTap: () {},
              ),
              ListTile(
                  leading: const Icon(
                    Icons.dark_mode_outlined,
                    color: primaryColor,
                  ),
                  title: Text('Mode Gelap',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: primaryColor),
                      )),
                  trailing: CupertinoSwitch(
                    value: false,
                    onChanged: (value) {},
                  )),
            ],
          ),
        ),
      ),
      //TabBarView akan error ketika tidak ditambahkan Controller
      //TabBarView adalah ViewPager versi flutter
      body: TabBarView(
        //Agar Viewpager g bisa di scroll:
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          SalaryPage(),
          NewsPage(),
          ProfilePage(),
        ],
        controller: _tabController,
      ),
      //Agar si BottomNav g ada background nya.
      extendBody: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(50)),
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelPadding: const EdgeInsets.symmetric(horizontal: 0),
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.white, width: 0)),
          tabs: const [
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Penggajian', icon: Icon(Icons.repeat_on_sharp)),
            Tab(text: 'Berita', icon: Icon(Icons.now_wallpaper_sharp)),
            Tab(text: 'Profile', icon: Icon(Icons.person)),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
