import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar', 'SA'),
      home: const PersonalCV(),
    );
  }
}

class PersonalCV extends StatelessWidget {
  const PersonalCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(170, 200, 69, 7),
        title: const Text(
          "التمرين الأول",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "السيرة الشخصية",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              _buildSectionTitle("المعلومات الشخصية"),
              _buildInfoRow("الأسم:", "عبد الصمد الصلوي"),
              _buildInfoRow("العمر:", "23 سنة"),
              _buildInfoRow("الجنسية:", "يمني"),
              _buildInfoRow("التخصص:", "تقنية المعلومات"),
              _buildInfoRow("المستوى:", "بكالوريوس"),
              const SizedBox(height: 20),
              _buildSectionTitle("الأعمال السابقة"),
              _buildBulletItem("تصميم موقع"),
              _buildBulletItem("تصميم نظام"),
              _buildBulletItem("تطوير شبكة"),
              const SizedBox(height: 20),
              _buildSectionTitle("المهارات"),
              _buildBulletItem("تحليل وتصميم"),
              _buildBulletItem("مبرمج"),
              _buildBulletItem("مطور ويب"),
              const SizedBox(height: 50), // مساحة إضافية لضمان التمرير
            ],
          ),
        ),
      ),
 bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(170, 200, 69, 7),
        child: Container(
          height: 70, // زيادة ارتفاع الـ BottomAppBar
          alignment: Alignment.center,
          child: const Text(
            "خالص الشكر والامتنان",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }


  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.start,
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 69, 9, 45),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 69, 9, 45),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(
            Icons.circle,
            size: 10,
            color: Color.fromARGB(255, 69, 9, 45),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 69, 9, 45),
            ),
          ),
        ],
      ),
    );
  }
}
