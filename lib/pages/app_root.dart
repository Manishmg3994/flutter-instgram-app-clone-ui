import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instaclone/pages/home_page.dart';
import 'package:instaclone/theme/colors.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

int pageIndex = 0;

class _AppRootState extends State<AppRoot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: getAppBar(),
      bottomNavigationBar: getBntNvaBar(),
      body: getBody(),
    );
  }

  getBody() {
    List<Widget> pages = [
      HomePage(),
  
      
      Center(
        child: Text(
          "Roman Coder",
          style: TextStyle(fontSize: 43, color: white),
        ),
      ),
      Center(
        child: Text(
          "Roman Coder",
          style: TextStyle(fontSize: 43, color: white),
        ),
      ),
      Center(
        child: Text(
          "Roman Coder",
          style: TextStyle(fontSize: 43, color: white),
        ),
      ),
    ];

    return IndexedStack(
      children: pages,
      index: pageIndex,
    );
  }

  getBntNvaBar() {
    List bottomItems = [
      pageIndex == 0
          ? "asset/svg/home_active_icon.svg"
          : "asset/svg/home_icon.svg",
      pageIndex == 1
          ? "asset/svg/search_active_icon.svg"
          : "asset/svg/search_icon.svg",
      pageIndex == 2
          ? "asset/svg/upload_active_icon.svg"
          : "asset/svg/upload_icon.svg",
      pageIndex == 3
          ? "asset/svg/love_active_icon.svg"
          : "asset/svg/love_icon.svg",
      pageIndex == 4
          ? "asset/svg/account_active_icon.svg"
          : "asset/svg/account_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 70,
      color: appFooterColor,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
              child: SvgPicture.asset(
                bottomItems[index],
                width: 35,
              ),
              onTap: () {
                selectedTap(index);
              },
            );
          }),
        ),
      ),
    );
  }

  getAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'asset/svg/camera_icon.svg',
              width: 35,
            ),
            Text(
              "Instgram",
              style: TextStyle(fontFamily: "Billabong", fontSize: 35),
            ),
            SvgPicture.asset(
              'asset/svg/message_icon.svg',
              width: 35,
            ),
          ],
        ),
      );
    } else if (pageIndex == 1) {
      return AppBar(
        title: Text("Seacrh"),
      );
    } else if (pageIndex == 2) {
      return AppBar(
        title: Text("upload"),
      );
    } else if (pageIndex == 3) {
      return AppBar(
        title: Text("activity"),
      );
    } else if (pageIndex == 4) {
      return AppBar(
        title: Text("account"),
      );
    }
  }

  selectedTap(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
