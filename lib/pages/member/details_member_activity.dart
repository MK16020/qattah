import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

class DetailsMemberActivity extends StatelessWidget {
  const DetailsMemberActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 240,
                  child: Image.network(
                    'https://media.istockphoto.com/id/1257109046/vector/invest-in-the-companys-bonds-stock-market-crash.jpg?s=612x612&w=0&k=20&c=EruxU4G9wMnEr98bmVpPnh4cm9Zz9b2agNrvZEKg3XY=',
                  ),
                ),
                const Positioned(left: 20, top: 80, child: Icon(Icons.settings_outlined, size: 28)),
                const Positioned(left: 388, top: 80, child: Icon(Icons.arrow_back_ios, size: 28)),
                Positioned(
                  left: 300,
                  top: 212,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 221, 219, 219),
                      border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 4.0)),
                      shape: BoxShape.circle,
                    ),
                    width: 70.0,
                    height: 70.0,
                    child: const Icon(Icons.person, size: 54.0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'مريم',
                  style: TextStyle(fontSize: 32),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'انت تطلب مريم ',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '25 SAR',
                  style: TextStyle(fontSize: 16, color: QMainGreen),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, 3),
                        blurRadius: 7,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  width: 120.0,
                  height: 48.0,
                  child: const Center(
                      child: Text('التسوية المالية', style: TextStyle(fontSize: 16.0, color: Colors.white))),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, 3),
                        blurRadius: 7,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  width: 120.0,
                  height: 48.0,
                  child: const Center(child: Text('تذكير..', style: TextStyle(fontSize: 16.0, color: Colors.black))),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, 3),
                        blurRadius: 7,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  width: 120.0,
                  height: 48.0,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('رسوم بيانية', style: TextStyle(color: Colors.black, fontSize: 16.0)),
                        Icon(Icons.draw_outlined),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: const [
                  Text(
                    'مارس ٢٠٢٣',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Row(
                children: [
                  const Text(
                    'مارس - ٧',
                    style: TextStyle(color: Color.fromARGB(255, 136, 136, 136)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 188, 188, 188),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    width: 72,
                    height: 72,
                    child: const Icon(Icons.wallet, size: 60, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'تجربة',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'انت دفعت 50.00 SAR',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'تطلبه',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        '25.00 SAR',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
