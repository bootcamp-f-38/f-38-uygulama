// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:f_38/controller/community_controller.dart';
import 'package:f_38/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

import '../constant/constants.dart';

class SearchCommunityDelegate extends SearchDelegate {
  final WidgetRef ref;
  SearchCommunityDelegate({
    required this.ref,
  });

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ref.watch(searchCommunityProvider(query)).when(
        data: (communities) => ListView.builder(
            itemCount: communities.length,
            itemBuilder: (BuildContext context, int index) {
              if (index >= communities.length) {
                return null;
              }

              final community = communities[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: ColorConstants.AppColor,
                  child: Text(
                    community.name.isNotEmpty
                        ? community.name[0].toUpperCase()
                        : "",
                    style: MyTextConstant.ralewayTextStyle,
                  ),
                ),
                title: Text(
                  community.name,
                  style: MyTextConstant.ralewayTextStyle,
                ),
                onTap: () => navigateToCommunity(context, community.name),
              );
            }),
        error: (error, stackTrace) => ErrorText(error: error.toString()),
        loading: () => const Loader());
  }

  void navigateToCommunity(BuildContext context, String communityName) {
    Routemaster.of(context).push('/community/${communityName}');
  }
}
