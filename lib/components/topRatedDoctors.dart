import 'package:doctor_appointment_app/components/doctor_card.dart';
import 'package:doctor_appointment_app/doctor_pages/doctor_details.dart';
import 'package:flutter/material.dart';

import '../model/doctor_class.dart';

class TopRatedDoctors extends StatelessWidget {
  const TopRatedDoctors({Key? key, required this.doctor}) : super(key: key);
  final Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        margin: EdgeInsets.all(4),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              color: Color(0xff404B63).withOpacity(0.1),
              blurRadius: 10,
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DoctorDetails(
                        doctor: doctor,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 77,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff00C6AD),
                    image: DecorationImage(
                      image: AssetImage(doctor?.image ?? ""),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("${doctor?.rating ?? ""}"),
                    SizedBox(width: 5),
                    Icon(
                      Icons.star,
                      color: Color(0xfff1c40f),
                      size: 24,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "${doctor?.firstName ?? ""} ${doctor?.lastName ?? ""}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text("${doctor?.type ?? ""}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
