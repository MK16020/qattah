import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

class WayToPaying extends StatefulWidget {
  const WayToPaying({super.key});

  @override
  State<WayToPaying> createState() => _WayToPayingState();
}

class _WayToPayingState extends State<WayToPaying> {
  FocusNode focusNode = FocusNode(); // declear a focusNode object

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close, color: QMainPink),
        title: const Text('تسجيل الدفع', style: TextStyle(color: QMainGreen, fontSize: 20)),
        actions: [
          TextButton(onPressed: () {}, child: const Text('حفظ', style: TextStyle(color: QLightGreen, fontSize: 20))),
        ],
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 221, 219, 219),
                    border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 4.0)),
                    shape: BoxShape.circle,
                  ),
                  width: 90.0,
                  height: 90.0,
                  child: const Icon(Icons.person, size: 70.0),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 54,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 221, 219, 219),
                    border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 4.0)),
                    shape: BoxShape.circle,
                  ),
                  width: 90.0,
                  height: 90.0,
                  child: const Icon(Icons.person, size: 70.0),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'دفعت مريم لك',
                  style: TextStyle(fontSize: 20),
                ),
              ],
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
    );
  }
}
