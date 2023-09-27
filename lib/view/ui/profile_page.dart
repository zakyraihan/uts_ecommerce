import 'package:flutter/material.dart';
import 'package:uts_flutter/view/components/style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile page',
          style: primary(30, Colors.blueAccent, FontWeight.bold),
        ),
      ),
    );
  }
}
