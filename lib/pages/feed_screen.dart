import 'package:f_38/controller/community_controller.dart';
import 'package:f_38/controller/post_controller.dart';
import 'package:f_38/pages/profile_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import '../community/search_community.dart';
import '../constant/constants.dart';
import '../controller/auth_controller.dart';
import '../utils/utils.dart';
import '../widgets/feed_post_card.dart';
import '../widgets/post_card.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = FirebaseAuth.instance.currentUser!;
    final _user = ref.watch(userProvider);
    void displayDrawer(BuildContext context) {
      Scaffold.of(context).openDrawer();
    }

    void displayEndDrawer(BuildContext context) {
      Scaffold.of(context).openEndDrawer();
    }

    void navigateToUserP(BuildContext context) {
      final uid = user.uid;
      Routemaster.of(context).push('/userp/$uid');
    }

    return Scaffold(
      endDrawer: const ProfileDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 11.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Routemaster.of(context)
                                  .push('/createcommunity-list');
                            },
                            icon: Icon(Icons.menu),
                          ),
                          IconButton(
                            onPressed: () {
                              showSearch(
                                context: context,
                                delegate: SearchCommunityDelegate(ref: ref),
                              );
                            },
                            icon: Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications_none),
                          ),
                          Builder(builder: (context) {
                            return InkWell(
                              onTap: () => displayEndDrawer(context),
                              child: CircleAvatar(
                                backgroundColor: ColorConstants.AppColor,
                                child: Text(
                                  _user!.username[0].toUpperCase(),
                                  style: TextStyle(color: Colors.white),
                                ),
                                radius: 30,
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 23.5),
                constraints: BoxConstraints(
                  maxWidth: 250,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selam,',
                      style: MyTextConstant.myCustomTextStyleCaption,
                    ),
                    Text(
                      _user?.name ?? "",
                      style: MyTextConstant.myCustomTextStyleCaption,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  width: 1000,
                  height: 32,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: ref.watch(userCommunitiesProvider).when(
                          data: (communities) {
                            return communities.map((community) {
                              return Row(
                                children: [
                                  Container(
                                    width: 131,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorConstants.secondAppColor,
                                      borderRadius: BorderRadius.circular(18.5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        community.name,
                                        style: MyTextConstant
                                            .myCustomTextStyleWhite,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                ],
                              );
                            }).toList();
                          },
                          error: (error, stackTrace) {
                            if (kDebugMode) print(error);
                            return [
                              ErrorText(
                                error: error.toString(),
                              ),
                            ];
                          },
                          loading: () => [const Loader()],
                        ),
                  ),
                ),
              ),
              ref.watch(userCommunitiesProvider).when(
                    data: (communities) => ref
                        .watch(userPostsProvider(communities))
                        .when(
                          data: (data) {
                            return ListView.builder(
                              shrinkWrap: true, // Bu özellik eklendi.
                              physics:
                                  NeverScrollableScrollPhysics(), // Bu özellik eklendi.
                              itemCount: data.length,
                              itemBuilder: (BuildContext context, int index) {
                                final post = data[index];
                                return PostCardFeedWidget(post: post);
                              },
                            );
                          },
                          error: (error, stackTrace) {
                            if (kDebugMode) print(error);
                            return ErrorText(
                              error: error.toString(),
                            );
                          },
                          loading: () => const Loader(),
                        ),
                    error: (error, stackTrace) => ErrorText(
                      error: error.toString(),
                    ),
                    loading: () => const Loader(),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
