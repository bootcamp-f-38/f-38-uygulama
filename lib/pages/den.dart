import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/auth_controller.dart';
import '../models/user.dart';

class den extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(child: Text(user?.name ?? "")));
  }
}
