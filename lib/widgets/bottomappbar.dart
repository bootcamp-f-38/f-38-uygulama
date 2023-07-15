import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import '../constant/constants.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    void navigateToUserP(BuildContext context) {
      final uid = user.uid;
      Routemaster.of(context).push('/userp/$uid');
    }

    return BottomAppBar(
      child: Row(children: [
        Spacer(),
        IconButton(
            onPressed: () {
              Routemaster.of(context).push('/');
            },
            icon: Icon(
              Icons.home,
              color: ColorConstants.AppColor,
            )),
        Spacer(),
        IconButton(
            onPressed: () {
              Routemaster.of(context).push('/add-post');
            },
            icon: Icon(
              Icons.add_box,
              color: ColorConstants.AppColor,
            )),
        Spacer(),
        IconButton(
            onPressed: () {
              Routemaster.of(context).push('/createcommunity-list');
            },
            icon: Icon(
              Icons.view_timeline,
              color: ColorConstants.AppColor,
            )),
        Spacer(),
        IconButton(
            onPressed: () {
              Routemaster.of(context).push('/news');
            },
            icon: Icon(
              Icons.menu_book_outlined,
              color: ColorConstants.AppColor,
            )),
        Spacer(),
      ]),
    );
  }
}
