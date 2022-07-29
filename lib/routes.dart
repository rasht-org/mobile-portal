import 'package:flutter/material.dart';
import 'package:portal/pages/home.dart';

Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    'home': (BuildContext context) => const HomePage()
  };
}