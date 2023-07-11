import 'package:f_38/constant/constants.dart';
import 'package:f_38/controller/community_controller.dart';
import 'package:f_38/models/community.dart';
import 'package:f_38/utils/utils.dart';
import 'package:f_38/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/auth_controller.dart';

class CommunityPage extends ConsumerWidget {
  final String name;
  const CommunityPage({
    required this.name,
  });

  void joinCommunity(WidgetRef ref, Community community, BuildContext context) {
    ref
        .read(communityControllerProvider.notifier)
        .joinCommunity(community, context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider)!;
    return Scaffold(
      body: ref.watch(getCommunityByNameProvider(name)).when(
            data: (community) => NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 150,
                    snap: true,
                    floating: true,
                    flexibleSpace: Stack(
                      children: [
                        Positioned.fill(
                            child: Image.asset(
                          "assets/images/communitybanner.jpg",
                          fit: BoxFit.cover,
                        ))
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                        delegate: SliverChildListDelegate([
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: ColorConstants.OrangeAppColor,
                          child: Text(
                            community.name[0].toUpperCase(),
                            style: MyTextConstant.ralewayTextStyle,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            community.name,
                            style: MyTextConstant.ralewayTextStyle,
                          ),
                          OutlinedButton(
                              onPressed: () =>
                                  joinCommunity(ref, community, context),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20)),
                              child: Text(
                                community.members.contains(user.uid)
                                    ? "Üye"
                                    : "Katıl",
                                style: MyTextConstant.ralewayTextStyle,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("${community.members.length} üye"),
                      )
                    ])),
                  )
                ];
              },
              body: ref.watch(getCommunityPostsProvider(name)).when(
                    data: (data) {
                      return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          final post = data[index];
                          return PostCardWidget(post: post);
                        },
                      );
                    },
                    error: (error, stackTrace) {
                      return ErrorText(error: error.toString());
                    },
                    loading: () => const Loader(),
                  ),
            ),
            error: (error, stackTrace) => ErrorText(error: error.toString()),
            loading: () => const Loader(),
          ),
    );
  }
}
