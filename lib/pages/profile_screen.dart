// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:f_38/constant/constants.dart';
import 'package:routemaster/routemaster.dart';
import '../controller/auth_controller.dart';
import '../controller/profile_controller.dart';
import '../utils/utils.dart';
import '../widgets/profile_post_card.dart';

final displayTextProvider =
    StateNotifierProvider<DisplayTextNotifier, bool>((ref) {
  final user = FirebaseAuth.instance.currentUser!;
  return DisplayTextNotifier(user.uid, ref);
});

class DisplayTextNotifier extends StateNotifier<bool> {
  final String uid;
  final Ref _ref;

  DisplayTextNotifier(
    this.uid,
    this._ref,
  ) : super(true);

  void toggle() {
    state = !state;
    _ref.read(getUserPostsProvider(uid));
  }
}

class UserProfileScreen extends ConsumerWidget {
  final String uid;
  const UserProfileScreen({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayText = ref.watch(displayTextProvider);

    void toggleDisplay() {
      ref.read(displayTextProvider.notifier).toggle();
    }

    return Scaffold(
      body: ref.watch(getUserDataProvider(uid)).when(
            data: (user) => NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 250,
                    floating: true,
                    snap: true,
                    flexibleSpace: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            "assets/images/logo_greenshare.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding:
                              const EdgeInsets.all(20).copyWith(bottom: 70),
                          child: CircleAvatar(
                            backgroundColor: ColorConstants.AppColor,
                            radius: 23,
                            child: Text(
                              user.name[0].toUpperCase(),
                              style: MyTextConstant.ralewayTextStyle,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Routemaster.of(context).push('/settings');
                                  },
                                  child: Text(
                                    'Ayarlar',
                                    style: MyTextConstant.ralewayTextStyleWhite,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  '✨ ${user.badge} Etkileşim Puanı',
                                  style: MyTextConstant.ralewayTextStyleBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('${user.name}',
                                      style: MyTextConstant.ralewayTextStyle),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('@${user.username}',
                                      style:
                                          MyTextConstant.ralewayTextStyleBold),
                                ],
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      if (!displayText) toggleDisplay();
                                    },
                                    child: Text(
                                      'Yazılar',
                                      style: TextStyle(
                                        color: displayText
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      if (displayText) toggleDisplay();
                                    },
                                    child: Text(
                                      'Fotoğraflar',
                                      style: TextStyle(
                                        color: displayText
                                            ? Colors.grey
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Divider(thickness: 2),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: ref.watch(getUserPostsProvider(uid)).when(
                    data: (data) {
                      final filteredData = displayText
                          ? data.where((post) => post.type == 'yazi').toList()
                          : data
                              .where((post) => post.type == 'fotograf')
                              .toList();
                      if (filteredData.isEmpty) {
                        return Center(
                          child: Text(
                            'Henüz gönderi bulunmamaktadır.',
                            style: MyTextConstant.ralewayTextStyle,
                          ),
                        );
                      }

                      if (displayText) {
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1, childAspectRatio: 2),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          itemCount: filteredData.length,
                          itemBuilder: (BuildContext context, int index) {
                            final post = filteredData[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: PostCardProfileWidget(
                                  post:
                                      post), // Replace with your text-based widget
                            );
                          },
                        );
                      } else {
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.60,
                          ),
                          itemCount: filteredData.length,
                          itemBuilder: (BuildContext context, int index) {
                            final post = filteredData[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: PostCardProfileWidget(
                                  post:
                                      post), // Replace with your image-based widget
                            );
                          },
                        );
                      }
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
