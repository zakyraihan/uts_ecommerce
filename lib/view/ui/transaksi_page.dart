import 'package:uts_flutter/view/components/style.dart';
import 'package:flutter/material.dart';

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Transaction page',
          style: primary(30, Colors.blueAccent, FontWeight.bold),
        ),
      ),
    );
  }
}
