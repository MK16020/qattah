import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

class AddQattahPage extends StatefulWidget {
  const AddQattahPage({super.key});

  @override
  State<AddQattahPage> createState() => _AddQattahPageState();
}

class _AddQattahPageState extends State<AddQattahPage> {
  String dropdownvalue = 'أنت دفعت، تقسم بالتساوي';
  var items = [
    'أنت دفعت، تقسم بالتساوي',
    'أنت دفعت القيمة كاملة',
    'ريما دفع، تقسم بالتساوي',
    'ريما دفع القيمة كاملة',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: const Text('حفظ', style: TextStyle(color: QDarkerGrey)),
        ),
        title: const Text('اضافة حساب', style: TextStyle(color: QMainGreen, fontSize: 24)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_forward_ios, color: QDarkerGrey),
          ),
        ],
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'أنت و:',
                      style: TextStyle(color: QMainGreen),
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
                    )),
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
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
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
                      const Icon(Icons.edit_outlined),
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
