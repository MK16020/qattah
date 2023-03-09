import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';
import 'package:qattah_project/components/member_list.dart';
import 'package:uuid/uuid.dart';

import '../../models/user_model.dart';

class AddMemberPage extends StatefulWidget {
  const AddMemberPage({super.key});

  @override
  State<AddMemberPage> createState() => _AddMemberPageState();
}

class _AddMemberPageState extends State<AddMemberPage> {
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('إضافة صديق', style: TextStyle(fontSize: 24)),
        actions: [
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const AddQattahPage()),
              // );
            },
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: QMainGreen,
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'الإسم',
                    style: TextStyle(color: Color(0XFF33523E), fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: '',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: QLightGreen),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
                const TextField(
                  decoration:
                      InputDecoration(hintText: 'ادخل اسم، بريد إلكتروني، أو رقم جوال', border: InputBorder.none),
                ),
                Center(
                  child: SizedBox(
                    width: 120,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () async {
                        String id = const Uuid().v4();
                        UserModel user = UserModel(id: id, name: nameController.text, imageUrl: 'images/profile.png');
                        await FirebaseFirestore.instance.collection('User').doc(id).set(user.toMap());
                        UserModel.users.add(user);
                        setState(() {});
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MemberList()));
                      },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(QMainPink)),
                      child: const Text('إضافة', style: TextStyle(color: QMainGreen)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
