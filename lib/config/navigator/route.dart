import 'package:flutter/material.dart';
import 'package:k_profile/ui/home/home_page.dart';

class RouteUtil {
  static const String initialRoute ='/';



  static Route<dynamic> onGenerateRote(RouteSettings settings) {


    return MaterialPageRoute(builder: (ctx) => const HomePage());
  }
}