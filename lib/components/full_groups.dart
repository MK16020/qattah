import 'package:flutter/material.dart';
import 'package:qattah_project/models/group_model.dart';

import '../constants/qcolors.dart';

class FullGroups extends StatefulWidget {
  const FullGroups({super.key});

  @override
  State<FullGroups> createState() => _FullGroupsPageState();
}

class _FullGroupsPageState extends State<FullGroups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const AddGroupPage(),
            //   ),
            // );
            setState(() {});
          },
          icon: const Icon(
            Icons.group_add,
            size: 32,
          ),
        ),
        title: const Text('المجموعات', style: TextStyle(fontSize: 24)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.search,
              size: 32,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            const SizedBox(
              height: 8,
            ),
            for (final group in GroupModel.groups) ...[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: 0.5)),
                        shape: BoxShape.circle,
                      ),
                      width: 48,
                      height: 48,
                      child: Image(
                        image: AssetImage(group.imageUrl),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(group.name, style: const TextStyle(color: Colors.black, fontSize: 16)),
                    const Spacer(),
                    const Text('خالية من الحسابات', style: TextStyle(color: QLightGrey, fontSize: 12)),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: QLightGrey,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
            ],
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: .5)),
                      shape: BoxShape.circle,
                    ),
                    width: 48,
                    height: 48,
                    child: const Icon(Icons.home, size: 40, color: Color.fromARGB(255, 67, 153, 70)),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('البيت', style: TextStyle(color: Colors.black, fontSize: 16)),
                  const Spacer(),
                  const Text('خالية من الحسابات', style: TextStyle(color: QLightGrey, fontSize: 12)),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: QLightGrey,
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
