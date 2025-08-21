import 'package:flutter/material.dart';

void main() {
  runApp(const TaskUI1());
}

class TaskUI1 extends StatelessWidget {
  const TaskUI1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF5E8B7),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // العنوان
                const Text(
                  'وصفة بيتزا الدجاج',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Image.asset('assets/pizza.jpeg'),
                    ),

                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // المكونات من اليسار إلى اليمين
                      children: [
                        const Text(
                          'مكونات العجينة',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'كوب دقيق',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Text(
                          'كوب ماء دافئ',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Text(
                          'ملعقة كبيرة سكر',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Text(
                          'ملعقة كبيرة خميرة فورية جافة',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Text(
                          'ملعقة كبيرة زيت نباتي',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Text(
                          'ملعقة صغيرة ملح',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // 🌟 توسيط الرموز
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.local_dining_sharp, size: 24, color: Colors.black),
                        const SizedBox(height: 5),
                        const Text('6-8 أشخاص', style: TextStyle(color: Colors.black)),
                      ],
                    ),

                    const SizedBox(width: 30),
                    Column(
                      children: [
                        const Icon(Icons.access_time, size: 24, color: Colors.black),
                        const SizedBox(height: 5),
                        const Text('1 ساعة', style: TextStyle(color: Colors.black)),
                      ],
                    ),

                    const SizedBox(width: 30),
                    Column(
                      children: [
                        const Icon(Icons.local_dining, size: 24, color: Colors.black),
                        const SizedBox(height: 5),
                        const Text('35 دقيقة', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}