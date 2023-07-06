import 'package:f_38/repository/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/auth_controller.dart';
import '../models/user.dart';

class den extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userProvider);
    final post = ref.read(postRepositoryProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(child: Text(user?.name ?? "")));
  }
}
