import 'package:doctor_appointment_app/model/doctor_class.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class DoctorCard extends StatelessWidget {
  // const DoctorCard({Key? key}) : super(key: key);
  // final String doctorFullName;
  // final String doctorImage;
  // final String doctortype;

  DoctorCard({
    // required this.doctorFullName,
    // required this.doctorImage,
    // required this.doctortype,
    @required this.doctor,
  });

  final Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: 283,
        height: 199,
        // width: double.infinity,
        decoration: BoxDecoration(
          color: ContaineColors,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
                left: 32,
                top: 32,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "${doctor!.firstName}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "${doctor!.lastName}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "${doctor!.type}",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )),
            Positioned(
                right: 16,
                bottom: 0,
                child: SizedBox(
                  width: 120,
                  height: 173,
                  child: Hero(
                    tag: "${doctor!.tagImage}",
                    child: Image.asset(
                      '${doctor!.image}',
                      filterQuality: FilterQuality.high,
                      //fit: BoxFit.fitHeight,
                      // height: 200,
                    ),
                  ),
                )),

            // Dot Image Possition
            Positioned(
              top: 16,
              right: 16,
              child: SizedBox(
                width: 162,
                height: 139,
                child: Image.asset('images/bg_shape.png'),
              ),
            ),

            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: 77,
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xff00A994),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
