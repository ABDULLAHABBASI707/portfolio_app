import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../model/education_model.dart';
import '../../../view model/controller.dart';

class EducationListWidget extends StatelessWidget {
  const EducationListWidget({Key? key}) : super(key: key);

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: List.generate(educationList.length, (index) {
          final education = educationList[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: MediaQuery.of(context).size.width > 600 ? 500 : double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.pinkAccent, Colors.blue],
              ),
              boxShadow:  [
              BoxShadow(
              color: Colors.pink,
              offset: const Offset(-2, 0),

            ),
                BoxShadow(
                  color: Colors.blue,
                  offset: const Offset(2, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF0D0D1C),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  width: 0.1,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          education.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        education.date,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    education.education,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFFF2C94C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),


                  GestureDetector(
                    onTap: () => _launchURL(education.credential),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.pinkAccent, Colors.blueAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Credentials',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Colors.white, size: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
