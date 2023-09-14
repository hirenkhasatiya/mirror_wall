import 'package:flutter/material.dart';

class NetflixPage extends StatelessWidget {
  const NetflixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NETFLIX"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
    );
  }
}
