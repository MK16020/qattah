import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants/qcolors.dart';

class AccountImage extends StatefulWidget {
  const AccountImage({
    super.key,
  });

  @override
  State<AccountImage> createState() => _AccountImageState();
}

class _AccountImageState extends State<AccountImage> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            width: 120,
            height: 120,
            clipBehavior: Clip.hardEdge,
            child: imageFile == null
                ? Container(
                    decoration: BoxDecoration(color: QLightGrey, borderRadius: BorderRadius.circular(100)),
                  )
                : Image.file(imageFile!, width: 120, height: 130, fit: BoxFit.cover),
          ),
          Positioned(
            left: 5,
            top: 80,
            child: IconButton(
              onPressed: () {
                _getFromGallery();
              },
              icon: const Icon(Icons.camera_alt_outlined, size: 35, color: QMainPink),
            ),
          ),
        ],
      ),
    );
  }

  _getFromGallery() async {
    final firebaseStorage = FirebaseStorage.instance;
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 500,
      maxHeight: 500,
    );
    var file = File(pickedFile!.path);
    var snapshot = await firebaseStorage.ref().child('images/imageName').putFile(file);
    var downloadUrl = await snapshot.ref.getDownloadURL();
    setState(() {
      imageFile = File(pickedFile.path);
    });
  }
}
