import 'package:f_38/constant/constants.dart';
import 'package:f_38/controller/community_controller.dart';
import 'package:f_38/models/community.dart';
import 'package:f_38/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

class CommunityList extends ConsumerWidget {
  const CommunityList({super.key});

  void navigateToCreateCommunity(BuildContext context) {
    Routemaster.of(context).push('/createcommunity');
  }

  void navigateToCommunity(BuildContext context, Community community) {
    Routemaster.of(context).push('/community/${community.name}');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.OrangeAppColor,
        title: Text(
          "Topluluklar",
          style: MyTextConstant.ralewayTextStyle,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.grey[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                const Text(
                  "Topluluk oluştur",
                  style: MyTextConstant.ralewayTextStyle,
                ),
              ],
            ),
            onPressed: () => navigateToCreateCommunity(context),
          ),
          SizedBox(
            height: 10,
          ),
          ref.watch(userCommunitiesProvider).when(
              data: (communities) => Expanded(
                    child: ListView.builder(
                        itemCount: communities.length,
                        itemBuilder: (BuildContext context, int index) {
                          final community = communities[index];
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: ColorConstants.OrangeAppColor,
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
                            onTap: () {
                              navigateToCommunity(context, community);
                            },
                          );
                        }),
                  ),
              error: (error, stackTrace) => ErrorText(error: error.toString()),
              loading: () => const Loader())
        ],
      ),
    );
  }
}
