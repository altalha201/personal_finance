import 'package:flutter/material.dart';
import 'package:personal_finance/ui/screens/fragments/all_notes.dart';
import 'package:personal_finance/ui/screens/fragments/create_note.dart';
import 'package:personal_finance/ui/screens/fragments/transection_list.dart';
import 'package:personal_finance/ui/utils/application_assets.dart';
import 'package:personal_finance/ui/utils/spacing.dart';
import 'package:personal_finance/ui/utils/text_styles.dart';

import '../widgets/app_drawer.dart';
import '../widgets/custom_app_button.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/screen_background_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  List<Widget> fragmentItems = [
    AllNotes(),
    CreateNote(),
    TransactionList()
  ];

  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: const AppDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        selectedItemColor: AppColor.colorBlack,
        onTap: (value) {
          setState(() {
            selectedPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "Add New Note"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), label: "Transactions"),
        ],
      ),
      body: ScreenBackground(
        child: Column(
          children: [
            CustomAppBar(globalKey: _globalKey),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome back AL Talha", style: homeTitleStyle,),
                  Spacing.verticalSpacing(8.0),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      color: AppColor.colorBlack,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Your Balance", style: TextStyle(color: AppColor.colorWhite),),
                            Text("5000 /=", style: balanceTextStyle,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacing.verticalSpacing(16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAppButton(
                        onPress: () {

                        },
                        text: 'Deposit',
                        leftCurve: 30,
                      ),
                      CustomAppButton(
                        onPress: () {

                        },
                        text: 'Send',
                      ),
                      CustomAppButton(
                        onPress: () {

                        },
                        text: 'Withdraw',
                        rightCurve: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(width: double.infinity, height: 2, color: AppColor.colorBlack,),
            Expanded(child: fragmentItems[selectedPage])
          ],
        ),
      ),
    );
  }
}
