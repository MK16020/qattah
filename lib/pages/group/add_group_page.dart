import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:qattah_project/models/group_model.dart';
import 'package:uuid/uuid.dart';

import '../../constants/qcolors.dart';

class AddGroupPage extends StatefulWidget {
  const AddGroupPage({super.key});

  @override
  State<AddGroupPage> createState() => _AddGroupPageState();
}

class _AddGroupPageState extends State<AddGroupPage> {
  TextEditingController nameController = TextEditingController();
  int selected = 4;
  var types = [
    GroupType(
      name: 'المنزل',
      icon: const Icon(
        Icons.home,
        color: Color.fromARGB(255, 67, 153, 70),
      ),
    ),
    GroupType(
      name: 'شريكان',
      icon: const Icon(
        Icons.favorite_outline,
        color: Color.fromARGB(255, 212, 59, 48),
      ),
    ),
    GroupType(
      name: 'أخرى',
      icon: const Icon(
        Icons.list_alt,
        color: Color(0XFF4C43BA),
      ),
    ),
  ];

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  String id = const Uuid().v4();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            GroupModel group = GroupModel(
              id: id,
              name: nameController.text.trim(),
              type: types[selected].name,
              imageUrl: 'images/group_image.png',
            );
            GroupModel.groups.add(group);
            FirebaseFirestore.instance.collection('Group').doc(id).set(group.toMap());
            Navigator.pop(context);
          },
          child: const Text(
            'حفظ',
            style: TextStyle(color: QMainGreen),
          ),
        ),
        title: const Text('إنشاء مجموعة', style: TextStyle(fontSize: 24)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 76,
                    height: 76,
                    child: DottedBorder(
                      color: QLightPink,
                      strokeWidth: 2,
                      borderType: BorderType.Circle,
                      dashPattern: const [1, 6],
                      padding: const EdgeInsets.all(4),
                      strokeCap: StrokeCap.round,
                      child: const Center(
                        child: Icon(
                          Icons.camera_enhance_outlined,
                          size: 48,
                          color: QMainPink,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: nameController,
                      decoration:
                          const InputDecoration(hintText: 'اسم المجموعة', hintStyle: TextStyle(color: QLightGrey)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(36.0),
              child: Row(
                children: [
                  Text(
                    'النوع',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0, left: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < types.length; i++)
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = i;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(
                            BorderSide(color: (selected == i) ? QMainGreen : QBlack, width: (selected == i) ? 2 : 0.5),
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Row(
                          children: [
                            types[i].icon,
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              types[i].name,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GroupType {
  String name;
  Icon icon;
  GroupType({
    required this.name,
    required this.icon,
  });
}
