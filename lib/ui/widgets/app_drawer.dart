import 'package:flutter/material.dart';
import 'package:personal_finance/ui/screens/home_screen.dart';

import '../utils/application_assets.dart';
import '../utils/spacing.dart';
import '../utils/text_styles.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColor.colorBlack, AppColor.colorDarkGray, AppColor.colorGray]
                  )
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/logo.png', width: 40, fit: BoxFit.cover,),
                    ),
                    Spacing.verticalSpacing(8.0),
                    Text("Welcome to", style: menuWelcomeStyle,),
                    Text("Personal Finance", style: menuTitleStyle,)
                  ],
                ),
              )
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            iconColor: AppColor.colorBlack,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
          ListTile(leading: const Icon(Icons.person_add), title: const Text("Add new Contact"), iconColor: AppColor.colorBlack, onTap: () {},),
          ListTile(leading: const Icon(Icons.person), title: const Text("My Contacts"), iconColor: AppColor.colorBlack, onTap: () {},),
          ListTile(leading: const Icon(Icons.logout), title: const Text("Sign out"), iconColor: AppColor.colorBlack, onTap: () {},),
          ListTile(leading: const Icon(Icons.settings), title: const Text("Settings"), iconColor: AppColor.colorBlack, onTap: () {},),
          ListTile(leading: const Icon(Icons.info_outline), title: const Text("About"), iconColor: AppColor.colorBlack, onTap: () {},),
          ListTile(leading: const Icon(Icons.exit_to_app), title: const Text("Exit"), iconColor: AppColor.colorBlack, onTap: () {},),
        ],
      ),
    );
  }
}
