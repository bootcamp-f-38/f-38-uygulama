import 'package:f_38/community/community_list.dart';
import 'package:f_38/community/community_page.dart';
import 'package:f_38/community/create_community_page.dart';
import 'package:f_38/models/article_model.dart';
import 'package:f_38/pages/add_post_page.dart';
import 'package:f_38/pages/add_post_type_screen.dart';
import 'package:f_38/pages/article_screen.dart';
import 'package:f_38/pages/comments_screen.dart';
import 'package:f_38/pages/feed_screen.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:f_38/pages/news_page.dart';
import 'package:f_38/pages/profile_screen.dart';
import 'package:f_38/pages/profile_settings.dart';
import 'package:f_38/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => MaterialPage(child: LoginPage()),
  '/signup': (_) => MaterialPage(child: SignUpPage()),
});
final loggedInRoute = RouteMap(routes: {
  '/signup': (_) => MaterialPage(child: FeedScreen()),
  '/': (_) => MaterialPage(child: FeedScreen()),
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
  '/settings': (_) => MaterialPage(child: ProfileSettings()),
  '/news': (_) => MaterialPage(child: NewsPage()),
  '/userp/:uid': (routeData) => MaterialPage(
          child: UserProfileScreen(
        uid: routeData.pathParameters['uid']!,
      )),
  '/article/:id': (routeData) => MaterialPage(
          child: ArticleScreen(
        id: routeData.pathParameters['id']!,
      )),
  '/post/:postId/comments': (route) => MaterialPage(
        child: CommentsScreen(
          postId: route.pathParameters['postId']!,
        ),
      ),
});
