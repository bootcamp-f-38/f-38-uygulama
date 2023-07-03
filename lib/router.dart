import 'package:f_38/community/community_list.dart';
import 'package:f_38/community/community_page.dart';
import 'package:f_38/community/create_community_page.dart';
import 'package:f_38/pages/add_post_page.dart';
import 'package:f_38/pages/add_post_type_screen.dart';
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
  '/signup': (_) => MaterialPage(child: HomePage()),
  '/': (_) => MaterialPage(child: HomePage()),
  '/profile': (routeData) => MaterialPage(
        child: ProfilePage(),
      ),
  '/add-post/:type': (routeData) => MaterialPage(
        child: AddPostTypeScreen(
          type: routeData.pathParameters['type']!,
        ),
      ),
  '/add-post': (routeData) => MaterialPage(
        child: AddPostPage(),
      ),
  '/createcommunity': (routeData) => MaterialPage(
        child: CreateCommunityPage(),
      ),
  '/createcommunity-list': (routeData) => MaterialPage(
        child: CommunityList(),
      ),
  '/community/:name': (routeData) => MaterialPage(
        child: CommunityPage(
          name: routeData.pathParameters['name']!,
        ),
      ),
});
