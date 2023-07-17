import 'package:f_38/community/community_list.dart';
import 'package:f_38/community/community_page.dart';
import 'package:f_38/community/create_community_page.dart';
import 'package:f_38/models/article_model.dart';
import 'package:f_38/pages/add_post_page.dart';
import 'package:f_38/pages/add_post_type_screen.dart';
import 'package:f_38/pages/feed_screen.dart';
import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:f_38/pages/news_page.dart';
import 'package:f_38/pages/profile_page.dart';
import 'package:f_38/pages/profile_screen.dart';
import 'package:f_38/pages/signup_page.dart';
import 'package:f_38/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => MaterialPage(child:   SplashPage()),
  '/signup': (_) => MaterialPage(child: SignUpPage()),
});
final loggedInRoute = RouteMap(routes: {
  '/signup': (_) => MaterialPage(child: FeedScreen()),
  '/': (_) => MaterialPage(child: FeedScreen()),
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
  '/feed': (_) => MaterialPage(child: FeedScreen()),
  '/news': (_) => MaterialPage(child: NewsPage()),
  '/userp/:uid': (routeData) => MaterialPage(
          child: UserProfileScreen(
        uid: routeData.pathParameters['uid']!,
      )),
});
