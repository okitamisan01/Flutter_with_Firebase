import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
        child:
        Text("CHAT APP", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.teal
      ),
      body: const Center(
          child:
          Text("ででーん"),
      ),
    );
  }
}
