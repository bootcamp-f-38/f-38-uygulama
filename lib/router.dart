import 'package:f_38/pages/new_pages/home_page.dart';
import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:f_38/pages/profile_page.dart';
import 'package:f_38/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => MaterialPage(child: LoginPage()),
  '/signup': (_) => MaterialPage(child: SignUpPage()),
});
final loggedInRoute = RouteMap(routes: {
  '/': (_) => MaterialPage(child: HomePageWidget()),
  '/profile': (routeData) => MaterialPage(
        child: ProfilePage(),
      ),
});
