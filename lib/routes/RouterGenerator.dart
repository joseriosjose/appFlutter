import 'package:alertatemprana/views/atencion.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../views/Login.dart';
import '../views/Home.dart';
import '../views/tutorias.dart';
import '../views/atencion.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return loginRute();
      case '/home':
        return homeRute();
      case '/tutorias':
        return turotiasAlumnoRute();
      case '/becas':
        return turotiasAlumnoRute();
      case '/atencion':
        return atencionAlumnoRoute();
    }
  }

  static Route loginRute() {
    return PageTransition(
        type: PageTransitionType.scale,
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 900),
        child: Login());
  }

  static Route homeRute() {
    return PageTransition(
        type: PageTransitionType.scale,
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 500),
        child: Home());
  }

  static Route turotiasAlumnoRute() {
    return PageTransition(
        type: PageTransitionType.scale,
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 500),
        child: TutoriasAlumno());
  }

  static Route becasAlumnoRoute() {
    return PageTransition(
        type: PageTransitionType.scale,
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 500),
        child: TutoriasAlumno());
  }

  static Route atencionAlumnoRoute() {
    return PageTransition(
        type: PageTransitionType.scale,
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 500),
        child: Atencion());
  }
}
