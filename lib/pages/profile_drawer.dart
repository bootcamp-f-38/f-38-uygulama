import 'package:f_38/constant/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

import '../controller/auth_controller.dart';

class ProfileDrawer extends ConsumerWidget {
  const ProfileDrawer({super.key});

  void logOut(WidgetRef ref) {
    ref.read(authControllerProvider.notifier).logout();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider)!;
    final _user = FirebaseAuth.instance.currentUser!;

    void navigateToUserP(BuildContext context) {
      final uid = user.uid;
      Routemaster.of(context).push('/userp/$uid');
    }

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/default_user.png"),
            ),
            const SizedBox(height: 10),
            Text('${user.name}', style: MyTextConstant.myCustomTextStyle),
            const SizedBox(height: 10),
            const Divider(),
            ListTile(
              title: const Text(
                'Profilim',
                style: MyTextConstant.ralewayTextStyle,
              ),
              leading: const Icon(Icons.person),
              onTap: () => navigateToUserP(context),
            ),
            ListTile(
              title: const Text(
                'Çıkış yap',
                style: MyTextConstant.ralewayTextStyle,
              ),
              leading: Icon(
                Icons.logout,
              ),
              onTap: () => logOut(ref),
            ),
          ],
        ),
      ),
    );
  }
}
