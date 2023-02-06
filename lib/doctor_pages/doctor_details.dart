import 'package:doctor_appointment_app/model/doctor_class.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key, this.doctor}) : super(key: key);
  final Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00C6AD),
        elevation: 0,
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            color: Color(0xff00C6AD),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 207,
                    height: 178,
                    child: Image(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fitHeight,
                      image: AssetImage('images/bg_shape.png'),
                    ),
                  ),
                ),
                Positioned(
                  right: 64,
                  bottom: 15,
                  child: SizedBox(
                    height: 250,
                    child: Hero(
                      tag: "${doctor!.firstName} ${doctor!.lastName}",
                      child: Image(
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fitHeight,
                        image: AssetImage("${doctor!.image}"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 15,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 32,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xffFFBB23),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "${doctor!.rating}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.star_border_purple500_sharp,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          // Doctor Details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. ${doctor!.firstName} ${doctor!.lastName}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(
                      Icons.add_location,
                      color: Color(0xffC6C6CD),
                      size: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      doctor?.location ?? "",
                      style: TextStyle(
                        color: Color(0xffC6C6CD),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xffFFF9EA),
                    border: Border.all(color: Color(0xffFFEDBE), width: 1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    doctor?.type ?? "",
                    style: TextStyle(
                      color: Color(0xffFFBF11),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  child: Text(
                    doctor?.description ?? "",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9E9E9E),
                    ),
                  ),
                ),
                //+++++

                //_____
              ],
            ),
          )
        ],
      ),
    );
  }

// Custom App Bar

}
