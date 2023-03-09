import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

class DetailsMemberActivity extends StatelessWidget {
  const DetailsMemberActivity({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.grey.withOpacity(0.5);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: QMainPink,
          ),
        ),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Image.network(
                    'https://media.istockphoto.com/id/1257109046/vector/invest-in-the-companys-bonds-stock-market-crash.jpg?s=612x612&w=0&k=20&c=EruxU4G9wMnEr98bmVpPnh4cm9Zz9b2agNrvZEKg3XY=',
                  ),
                ),
                Positioned(
                  left: 300,
                  top: 112,
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
              children: [
                Text(
                  'مريم',
                  style: TextStyle(fontSize: 32),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    color: QMainPink,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                        color: color,
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
                        color: color,
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
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
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
                    children: [
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
                    children: [
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
