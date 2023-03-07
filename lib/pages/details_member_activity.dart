import 'package:flutter/material.dart';

class DetailsMemberActivity extends StatelessWidget {
  const DetailsMemberActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.network(
                  'https://img.freepik.com/free-vector/illustration-saving-money-household-sector-investment-spending-daily-life_1150-41786.jpg',
                ),
              ),
              const Positioned(left: 20, top: 80, child: Icon(Icons.settings_outlined, size: 28)),
              const Positioned(left: 388, top: 80, child: Icon(Icons.arrow_forward_ios, size: 28)),
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
                'اسم العضو',
                style: TextStyle(fontSize: 32),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'العضو....',
                style: TextStyle(fontSize: 16),
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
                child: const Center(child: Text('تذكير..', style: TextStyle(fontSize: 16.0, color: Colors.white))),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
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
                child:
                    const Center(child: Text('التسوية المالية', style: TextStyle(fontSize: 16.0, color: Colors.white))),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
