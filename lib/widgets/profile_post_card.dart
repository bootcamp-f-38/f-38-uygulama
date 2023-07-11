import 'package:any_link_preview/any_link_preview.dart';
import 'package:f_38/constant/constants.dart';
import 'package:f_38/controller/post_controller.dart';
import 'package:f_38/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

import '../controller/auth_controller.dart';

class PostCardProfileWidget extends ConsumerWidget {
  final Post post;
  const PostCardProfileWidget({
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTypeImage = post.type == 'fotograf';
    final isTypeText = post.type == 'yazi';
    final isTypeLink = post.type == 'link';
    final user = ref.watch(userProvider)!;

    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 4,
                ).copyWith(right: 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Topluluk Paylaşımı",
                            style: MyTextConstant.ralewayTextStyleBold,
                          ),
                          Text(
                            "/${post.communityName}",
                            style: MyTextConstant.myCustomTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          post.title,
                          style: MyTextConstant.ralewayTextStyleBold,
                          maxLines: 3,
                        ),
                      ],
                    ),
                    if (isTypeImage)
                      Container(
                        alignment: Alignment.topLeft,
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  child: Image.network(
                                    post.link!,
                                    width: double.infinity,
                                    height: double.infinity,
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
                          displayDirection: UIDirection.uiDirectionHorizontal,
                          link: post.link!,
                        ),
                      ),
                    if (isTypeText)
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          post.description!,
                          style: MyTextConstant.ralewayTextStyle,
                        ),
                      ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => navigateToComments(context),
                          icon: const Icon(
                            Icons.comment,
                            size: 16,
                          ),
                        ),
                        if (post.uid == user.uid)
                          IconButton(
                            onPressed: () => deletePost(ref, context),
                            icon: Icon(
                              Icons.delete,
                              size: 16,
                            ),
                          ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
