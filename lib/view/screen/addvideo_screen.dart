import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiktok/constants.dart';
import 'package:tiktok/controller/add_video_controller.dart';

class AddVideoScreen extends StatefulWidget {
  AddVideoScreen({super.key});

  @override
  State<AddVideoScreen> createState() => _AddVideoScreenState();
}

class _AddVideoScreenState extends State<AddVideoScreen> {
  final AddVideoController controller = Get.put(AddVideoController());

  _showOptionalDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("Choose"),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  controller.pickVideo(ImageSource.gallery);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.add_photo_alternate),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Gallery")
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  print("select video");
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.camera),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () => Get.back(),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.close),
                    SizedBox(
                      width: 20,
                    ),
                    Text("cancel")
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();
    ObxValue<Rx<String>>(
        (rxVideoUrl) => Switch(value: true, onChanged: (change) {
          print("aaaaa");
        }),
        controller.rxVideoUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => _showOptionalDialog(context),
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(7)),
            child: const Text(
              "AddVideo",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
