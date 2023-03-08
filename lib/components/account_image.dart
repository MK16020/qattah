import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qattah_project/models/user_model.dart';

import '../constants/qcolors.dart';

class AccountImage extends StatefulWidget {
  const AccountImage({super.key, required this.user});
  final UserModel user;

  @override
  State<AccountImage> createState() => _AccountImageState();
}

class _AccountImageState extends State<AccountImage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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
            child: widget.user.imageUrl == ''
                ? Container(
                    decoration: BoxDecoration(color: QLightGrey, borderRadius: BorderRadius.circular(100)),
                  )
                : CachedNetworkImage(imageUrl: widget.user.imageUrl, width: 120, height: 130, fit: BoxFit.cover),
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
    var file = File(pickedFile?.path ?? '');
    var snapshot = await firebaseStorage.ref().child('images/imageName').putFile(file);
    var downloadUrl = await snapshot.ref.getDownloadURL();
    await FirebaseFirestore.instance.collection('User').doc(FirebaseAuth.instance.currentUser?.uid).set({
      'id': FirebaseAuth.instance.currentUser?.uid,
      'name': widget.user.name,
      'imageUrl': downloadUrl,
    });
  }
}
