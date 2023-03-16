import 'package:flutter/material.dart';

import '../utils/application_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required GlobalKey<ScaffoldState> globalKey,
  }) : _globalKey = globalKey, super(key: key);

  final GlobalKey<ScaffoldState> _globalKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: AppBar().preferredSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                _globalKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.settings)
          ),
          const Spacer(),
          Image.asset('assets/images/logo.png', width: 40,),
          const Spacer(),
          CircleAvatar(
            backgroundColor: AppColor.colorBlack,
            radius: 20,
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage("https://images.pexels.com/photos/1631677/pexels-photo-1631677.jpeg?cs=srgb&dl=pexels-abdullah-ghatasheh-1631677.jpg&fm=jpg"),
              // child: Image.network("https://images.pexels.com/photos/1631677/pexels-photo-1631677.jpeg?cs=srgb&dl=pexels-abdullah-ghatasheh-1631677.jpg&fm=jpg"),
            ),
          )
        ],
      ),
    );
  }
}
