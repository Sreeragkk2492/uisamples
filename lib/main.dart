import 'package:flutter/material.dart';
import 'package:uisamples/view/widget/bottomnavbar.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bottomnavbar(), 
      debugShowCheckedModeBanner: false,
    );
  }
}