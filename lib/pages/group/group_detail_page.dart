import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

class GroupDetailPage extends StatelessWidget {
  const GroupDetailPage({super.key, required this.name});
  final String name;

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
                    child: const Icon(Icons.people_alt, size: 54.0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 32),
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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('الأعضاء'),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 188, 188, 188),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        width: 72,
                        height: 72,
                        child: const Image(image: AssetImage('images/group_image.png')),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ريناد',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            ' دفع 50.00 SAR',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'تطلبهم',
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
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
