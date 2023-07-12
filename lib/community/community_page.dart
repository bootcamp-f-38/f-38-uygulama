import 'package:f_38/constant/constants.dart';
import 'package:f_38/controller/community_controller.dart';
import 'package:f_38/models/community.dart';
import 'package:f_38/utils/utils.dart';
import 'package:f_38/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

import '../controller/auth_controller.dart';
import '../models/user.dart';
import '../repository/auth_repository.dart';

final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository: authRepository, ref: ref);
});

final getUserDataProvider =
    StreamProvider.family<UserModel?, String>((ref, String uid) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.getUserData(uid);
});

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
    void showMembers(
        BuildContext context, List<String> members, WidgetRef ref) {
      showDialog(
        context: context,
        barrierColor: Colors.transparent, // Transparan arka plan rengi
        builder: (BuildContext dialogContext) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Köşeleri yuvarlatılmış şekil
            ),
            backgroundColor: Colors.white.withOpacity(0.9), // Arkaplan rengi
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Üyeler',
                    style: MyTextConstant.robotoSlabTextStyleSize15Bold,
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    child: Column(
                      children: members.map((memberUid) {
                        return ref.watch(getUserDataProvider(memberUid)).when(
                          data: (user) {
                            if (user != null) {
                              return ListTile(
                                title: Row(
                                  children: [
                                    CircleAvatar(
                                      child: Text(
                                        user.username[0].toUpperCase(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor: ColorConstants.AppColor,
                                      radius: 16,
                                    ),
                                    Text(
                                      "  @${user.username}",
                                      style: MyTextConstant
                                          .robotoSlabTextStyleSize15,
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              return SizedBox.shrink();
                            }
                          },
                          loading: () {
                            return CircularProgressIndicator();
                          },
                          error: (error, stackTrace) {
                            return Text(
                              'Üye bilgileri yüklenirken bir hata oluştu.',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    child: Text('Kapat',
                        style:
                            MyTextConstant.robotoSlabTextStyleSize15BoldGreen),
                    onPressed: () {
                      Navigator.of(dialogContext).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    final user = ref.watch(userProvider)!;
    final userData = ref.watch(getUserDataProvider(user.uid));
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
                          "assets/images/logo_greenshare.png",
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
                          backgroundColor: ColorConstants.AppColor,
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
                            style: MyTextConstant.ralewayTextStyleBoldGreen,
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
                                    ? "Ayrıl"
                                    : "Katıl",
                                style: MyTextConstant.ralewayTextStyle,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: InkWell(
                          onTap: () =>
                              showMembers(context, community.members, ref),
                          child: Text(
                            "${community.members.length} üye",
                            style: MyTextConstant.ralewayTextStyleBold,
                          ),
                        ),
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
