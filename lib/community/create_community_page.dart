import 'package:f_38/constant/constants.dart';
import 'package:f_38/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/community_controller.dart';

class CreateCommunityPage extends ConsumerStatefulWidget {
  const CreateCommunityPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateCommunityPageState();
}

class _CreateCommunityPageState extends ConsumerState<CreateCommunityPage> {
  final _communityNameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _communityNameController.dispose();
  }

  void createCommunity() {
    ref.read(communityControllerProvider.notifier).createCommunity(
          _communityNameController.text.trim(),
          context,
        );
  }

  @override
  Widget build(BuildContext context) {
    final _isLoading = ref.watch(communityControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Topluluk oluştur",
          style: MyTextConstant.myCustomTextStyleWhite,
        ),
        backgroundColor: ColorConstants.OrangeAppColor,
      ),
      body: _isLoading
          ? const Loader()
          : Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Topluluk ismi",
                      style: MyTextConstant.myCustomTextStyle,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _communityNameController,
                    decoration: const InputDecoration(
                      hintText: 'Topluluk ismi yazınız',
                      filled: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(18),
                    ),
                    maxLength: 25,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: ColorConstants.OrangeAppColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: createCommunity,
                      child: Text(
                        "Topluluk oluştur",
                        style: MyTextConstant.myCustomTextStyle,
                      ))
                ],
              ),
            ),
    );
  }
}
