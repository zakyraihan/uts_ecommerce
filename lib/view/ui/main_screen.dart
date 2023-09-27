// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts_flutter/controller/mainscreen_provider.dart';
import 'package:uts_flutter/view/components/bottom_nav.dart';
import 'package:uts_flutter/view/ui/transaksi_page.dart';
import 'package:uts_flutter/view/ui/home_page.dart';
import 'package:uts_flutter/view/ui/profile_page.dart';
import 'package:uts_flutter/view/ui/favorite_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final List<Widget> pageList = [
    HomePage(),
    FavoritePage(),
    TransaksiPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
