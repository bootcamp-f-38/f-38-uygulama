import 'package:any_link_preview/any_link_preview.dart';
import 'package:f_38/constant/constants.dart';
import 'package:f_38/controller/post_controller.dart';
import 'package:f_38/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:routemaster/routemaster.dart';

import '../controller/auth_controller.dart';

class PostCardFeedWidget extends ConsumerWidget {
  final Post post;
  const PostCardFeedWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  void deletePost(WidgetRef ref, BuildContext context) async {
    ref.read(postControllerProvider.notifier).deletePost(post, context);
  }

  void likePost(WidgetRef ref) async {
    ref.read(postControllerProvider.notifier).like(post);
  }

  void navigateToComments(BuildContext context) {
    Routemaster.of(context).push('/post/${post.id}/comments');
  }

  String formatTimestamp(DateTime timestamp) {
    final formatter = DateFormat('dd.MM.yyyy HH:mm');
    return formatter.format(timestamp);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTypeImage = post.type == 'fotograf';
    final isTypeText = post.type == 'yazi';
    final isTypeLink = post.type == 'link';
    final user = ref.watch(userProvider)!;
    final timestampString = formatTimestamp(post.timestamp);

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 16,
                    ).copyWith(right: 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Text(
                                    post.username[0].toUpperCase(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: ColorConstants.AppColor,
                                  radius: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        post.username,
                                        style:
                                            MyTextConstant.ralewayTextStyleBold,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (post.uid == user.uid)
                              IconButton(
                                onPressed: () => deletePost(ref, context),
                                icon: Icon(
                                  Icons.delete,
                                  size: 22,
                                ),
                              ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              " Topluluk Paylaşımı /${post.communityName}",
                              style: MyTextConstant.myCustomTextStyle,
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            post.title,
                            style: MyTextConstant.ralewayTextStyleBold,
                          ),
                        ),
                        if (isTypeImage)
                          Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: SizedBox(
                                      child: Image.network(
                                        post.link!,
                                        width: double.infinity,
                                        height: 300,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (isTypeLink)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: AnyLinkPreview(
                              displayDirection:
                                  UIDirection.uiDirectionHorizontal,
                              link: post.link!,
                            ),
                          ),
                        if (isTypeText)
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(post.description!,
                                style: MyTextConstant.ralewayTextStyle),
                          ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  likePost(ref);
                                },
                                icon: Icon(Icons.favorite,
                                    size: 22,
                                    color: post.likes.contains(user.uid)
                                        ? Colors.redAccent
                                        : Colors.grey)),
                            IconButton(
                              onPressed: () => navigateToComments(context),
                              icon: const Icon(
                                Icons.comment,
                                size: 22,
                              ),
                            ),
                            Text(
                              '${post.commentCount == 0 ? 'Yorum' : post.commentCount}',
                              style: MyTextConstant.ralewayTextStyle,
                            ),
                            SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Gönderildi: $timestampString',
                            style: MyTextConstant.ralewayTextStyle.copyWith(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ],
    );
  }
}
