import 'package:f_38/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/comment.dart';

class CommentCard extends ConsumerWidget {
  final Comment comment;
  const CommentCard({
    super.key,
    required this.comment,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Text(
                  comment.username[0].toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: ColorConstants.OrangeAppColor,
                radius: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(comment.username,
                          style: MyTextConstant.ralewayTextStyleBold),
                      Text(
                        comment.text,
                        style: MyTextConstant.myCustomTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.reply),
              ),
              const Text('Cevapla..'),
            ],
          ),
        ],
      ),
    );
  }
}
