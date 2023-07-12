import 'package:f_38/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

import '../constant/constants.dart';
import '../controller/profile_controller.dart';

class SearchUserDelegate extends SearchDelegate {
  final WidgetRef ref;
  SearchUserDelegate({
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
  String get searchFieldLabel => 'Kullanıcı arayın..';

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
    return ref.watch(searchUserProvider(query)).when(
        data: (users) => ListView.builder(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              if (index >= users.length) {
                return null;
              }

              final user = users[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: ColorConstants.AppColor,
                  child: Text(
                    user.name.isNotEmpty ? user.name[0].toUpperCase() : "",
                    style: MyTextConstant.ralewayTextStyle,
                  ),
                ),
                title: Text(
                  user.name,
                  style: MyTextConstant.ralewayTextStyle,
                ),
                onTap: () => navigateToUserP(context),
              );
            }),
        error: (error, stackTrace) => ErrorText(error: error.toString()),
        loading: () => const Loader());
  }

  void navigateToUserP(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final uid = user.uid;
    Routemaster.of(context).push('/userp/$uid');
  }
}
