import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiktok/constants.dart';

class AddVideoController extends GetxController {

  final Rx<String> rxVideoUrl = Rx<String>("");

  // String get videoUrl => _videoUrl.value;

  pickVideo(ImageSource source) async {
    XFile? file = await ImagePicker().pickImage(source: source);
    print(file?.name);
    print(file?.path);
    // uploadFile and fetch download url (replace with already url)
    var videoUrl = videos[0];
    print("videoUrl:$videoUrl");
    //bind with account
    rxVideoUrl.value = videoUrl;
    //
  }
}
