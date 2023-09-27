// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:uts_flutter/view/components/bottomnav.dart';
import '../../controller/mainscreen_provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        // ignore: avoid_types_as_parameter_names
        builder: (context, MainScreenNotifier, child) {
      return SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
          child: Container(
            padding: EdgeInsets.all(11),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              // color: Color(0xFFE2E2E2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Bottomnav(
                  color: MainScreenNotifier.pageIndex == 0
                      ? Color(0xFF00b14F)
                      : Color(0xB2292D32),
                  onTap: () {
                    MainScreenNotifier.pageIndex = 0;
                  },
                  icon: MainScreenNotifier.pageIndex == 0
                      ? Icons.home
                      : Icons.home_outlined,
                  label: 'Home',
                ),
                Bottomnav(
                  onTap: () {
                    MainScreenNotifier.pageIndex = 1;
                  },
                  icon: MainScreenNotifier.pageIndex == 1
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  color: MainScreenNotifier.pageIndex == 1
                      ? Colors.red
                      : Color(0xB2292D32),
                  label: 'Favorite',
                ),
                Bottomnav(
                  color: MainScreenNotifier.pageIndex == 2
                      ? Color(0xFF00b14F)
                      : Color(0xB2292D32),
                  onTap: () {
                    MainScreenNotifier.pageIndex = 2;
                  },
                  icon: MainScreenNotifier.pageIndex == 2
                      ? Iconsax.task_square
                      : Iconsax.task_square,
                  label: 'Transaksi',
                ),
                Bottomnav(
                  color: MainScreenNotifier.pageIndex == 3
                      ? Color(0xFF00b14F)
                      : Color(0xB2292D32),
                  onTap: () {
                    MainScreenNotifier.pageIndex = 3;
                  },
                  icon: Iconsax.profile_circle,
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
