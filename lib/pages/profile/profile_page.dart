import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
              backgroundImage: AssetImage('images/img_profile.png'),
              radius: 50),
          const SizedBox(height: 20),
          Column(
            children: const [Text('Mamang'), Text('Status')],
          ),
          const SizedBox(height: 20),
          buttonProfile(Icons.upload_sharp, 'Update Profile',
              Icons.arrow_forward_ios_sharp),
          const SizedBox(height: 20),
          buttonProfile(Icons.update_sharp, 'Ganti Password',
              Icons.arrow_forward_ios_sharp),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              showDialog(
                  context: (context),
                  builder: (context) {
                    return CupertinoAlertDialog(
                        title: const Text('Keluar?'),
                        content: const Text('Apakah anda ingin keluar?'),
                        actions: [
                          CupertinoDialogAction(
                            child: Container(
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              child: const Text(
                                'Ya',
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/sign-in');
                            },
                          ),
                          CupertinoDialogAction(
                            child: Container(
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              child: const Text('Tidak',
                                  style: TextStyle(color: Colors.red)),
                            ),
                            onPressed: () {
                              //.pop ini membatalakn suatu action
                              Navigator.of(context).pop();
                            },
                          ),
                        ]);
                  });
            },
            child: buttonProfile(
                Icons.logout_sharp, 'Keluar', Icons.arrow_forward_ios_sharp),
          )
        ],
      ),
    );
  }

  Widget buttonProfile(IconData iconFirst, String title, IconData secondIcon) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      height: 67,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffF5F5F5)),
      child: Row(children: [
        Icon(
          iconFirst,
          color: const Color(0xff0E2392),
        ),
        const SizedBox(width: 20),
        Expanded(child: Text(title, style: GoogleFonts.montserrat())),
        Icon(
          secondIcon,
          color: primaryColor,
        )
      ]),
    );
  }
}
