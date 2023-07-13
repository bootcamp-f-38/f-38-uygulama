// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:f_38/constant/constants.dart';
import 'package:f_38/controller/community_controller.dart';
import 'package:f_38/controller/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/community.dart';
import '../utils/utils.dart';

class AddPostTypeScreen extends ConsumerStatefulWidget {
  final String type;
  const AddPostTypeScreen({
    required this.type,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddPostTypeScreenState();
}

class _AddPostTypeScreenState extends ConsumerState<AddPostTypeScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _linkController = TextEditingController();
  List<Community> communities = [];
  Community? selectedCommunity;
  File? imageFile;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _linkController.dispose();
    super.dispose();
  }

  void selectImage() async {
    final res = await pickFile();

    if (res != null) {
      setState(() {
        imageFile = File(res.files.first.path!);
      });
    }
  }

  void sharePost() {
    if (widget.type == 'fotograf' &&
        imageFile != null &&
        _titleController.text.isNotEmpty) {
      ref.read(postControllerProvider.notifier).shareImagePost(
          context: context,
          title: _titleController.text.trim(),
          selectedCommunity: selectedCommunity ?? communities[0],
          file: imageFile);
    } else if (widget.type == 'yazi' &&
        _titleController.text.isNotEmpty &&
        _descriptionController.text.isNotEmpty) {
      ref.read(postControllerProvider.notifier).shareTextPost(
          context: context,
          title: _titleController.text.trim(),
          selectedCommunity: selectedCommunity ?? communities[0],
          description: _descriptionController.text.trim());
    } else if (widget.type == 'link' &&
        _titleController.text.isNotEmpty &&
        _linkController.text.isNotEmpty) {
      ref.read(postControllerProvider.notifier).shareLinkPost(
          context: context,
          title: _titleController.text.trim(),
          selectedCommunity: selectedCommunity ?? communities[0],
          link: _linkController.text.trim());
    } else {
      showSnackBar(context, "Tüm alanları doldurunuz!");
    }
  }

  @override
  Widget build(BuildContext context) {
    final _isLoading = ref.watch(postControllerProvider);
    final isTypeImage = widget.type == 'fotograf';
    final isTypeText = widget.type == 'yazi';
    final isTypeLink = widget.type == 'link';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.AppColor,
        title: Text(
          'Gönderi ${widget.type}',
          style: MyTextConstant.myCustomTextStyleWhite,
        ),
        actions: [
          TextButton(
            onPressed: sharePost,
            child: Text(
              'Gönder',
              style: MyTextConstant.ralewayTextStyle,
            ),
          ),
        ],
      ),
      body: _isLoading
          ? const Loader()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      filled: true,
                      hintText: 'Başlık girin',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(18),
                    ),
                    maxLength: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (isTypeImage)
                    GestureDetector(
                      onTap: selectImage,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        dashPattern: const [10, 4],
                        strokeCap: StrokeCap.round,
                        color: ColorConstants.AppColor,
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: imageFile != null
                              ? Image.file(imageFile!)
                              : const Center(
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    size: 40,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  if (isTypeText)
                    TextField(
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                        filled: true,
                        hintText: 'İçeriği yazın',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(18),
                      ),
                      maxLines: 7,
                    ),
                  if (isTypeLink)
                    TextField(
                      controller: _linkController,
                      decoration: const InputDecoration(
                        filled: true,
                        hintText: 'Linki giriniz',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(18),
                      ),
                    ),
                  const SizedBox(height: 20),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Topluluk seç',
                        style: MyTextConstant.myCustomTextStyle,
                      )),
                  ref.watch(userCommunitiesProvider).when(
                      data: (data) {
                        communities = data;
                        if (data.isEmpty) {
                          return const SizedBox();
                        }
                        return DropdownButton(
                            value: selectedCommunity ?? data[0],
                            items: data
                                .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e.name,
                                      style: MyTextConstant.myCustomTextStyle,
                                    )))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedCommunity = value as Community?;
                              });
                            });
                      },
                      error: (error, stackTrace) =>
                          ErrorText(error: error.toString()),
                      loading: () => const Loader()),
                ],
              ),
            ),
    );
  }
}
