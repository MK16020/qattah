import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

class AddGroupPage extends StatelessWidget {
  const AddGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close, size: 32, color: Colors.black),
        title: const Text('إنشاء مجموعة', style: TextStyle(color: QMainGreen, fontSize: 24)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'حفظ',
                style: TextStyle(color: QLightGrey),
              ),
            ),
          ),
        ],
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 64,
          ),
          Stack(
            children: [
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
                  ],
                ),
              ),
              const Positioned(
                top: 32,
                right: 120,
                child: Text(
                  'اسم المجموعة',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 92.0),
                child: Divider(
                  thickness: 1.5,
                  indent: 120,
                  endIndent: 40,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Row(
              children: const [
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
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: 0.5)),
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  width: 100,
                  height: 48,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 67, 153, 70),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'المنزل',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: 0.5)),
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  width: 100,
                  height: 48,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.favorite_outline,
                        color: Color.fromARGB(255, 212, 59, 48),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'شريكان',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: 0.5)),
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  width: 100,
                  height: 48,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.list_alt,
                        color: Color(0XFF4C43BA),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'أخرى',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
