import 'package:flutter/material.dart';
import 'package:portal/widgets/bottom_navigation.dart';

class BottomNavLayout extends StatelessWidget{
  const BottomNavLayout({
    super.key,
    this.title = "",
    required this.body
  });

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: const BottomNavigation(),
    );
  }

}