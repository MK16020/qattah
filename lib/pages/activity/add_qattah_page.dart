import 'package:flutter/material.dart';
import 'package:qattah_project/pages/activity/add_activity_page.dart';

import '../../constants/qcolors.dart';

class AddQattahPage extends StatefulWidget {
  const AddQattahPage({super.key});

  @override
  State<AddQattahPage> createState() => _AddQattahPageState();
}

class _AddQattahPageState extends State<AddQattahPage> {
  String dropdownvalue = '';
  var items = [
    '',
    'أنت دفعت المبلغ',
    'أنت أعرت المبلغ',
    'هو دفع المبلغ',
    'هو أعارك المبلغ',
  ];
  String dropdownvalue2 = '';
  var mem = [
    '',
    'اسم',
    ' اسم',
    'اسم',
    'اسم',
  ];
  @override
  Future<void> _showSimpleDialog() async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: SimpleDialog(
            title: const Text('إضافة ملاحظة'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(hintText: 'أضف ملاحضتك هنا', hintStyle: TextStyle(color: QLightGrey)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text('اضافة حساب', style: TextStyle(fontSize: 24)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddActivityPage()),
              );
            },
            child: const Text('حفظ', style: TextStyle(color: QDarkerGrey)),
          ),
        ],
        elevation: 0.5,
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'أنت و:',
                    style: TextStyle(color: QMainGreen),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: DropdownButton(
                      items: mem.map((String mem) {
                        return DropdownMenuItem(value: mem, child: Text(mem));
                      }).toList(),
                      value: dropdownvalue2,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue2 = newValue!;
                        });
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68),
                child: Row(
                  children: const [
                    Icon(
                      Icons.description_outlined,
                      color: QLightestGreen,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: 'أدخل وصف', hintStyle: TextStyle(color: QLightGrey)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68),
                child: Row(
                  children: const [
                    Icon(Icons.currency_exchange_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: 'أدخل المبلغ', hintStyle: TextStyle(color: QLightGrey)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Text(
                    'من دفع؟',
                    style: TextStyle(color: QMainGreen),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: DropdownButton(
                      items: items.map((String items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                      value: dropdownvalue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: const [
                        Icon(Icons.calendar_month_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('اليوم'),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.group_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('بدون مجموعة'),
                      ]),
                      IconButton(
                        onPressed: _showSimpleDialog,
                        icon: const Icon(Icons.edit_outlined),
                      ),
                      // const Icon(Icons.edit_outlined),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
