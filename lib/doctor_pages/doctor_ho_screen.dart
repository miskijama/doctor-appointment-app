import 'package:doctor_appointment_app/components/colors.dart';
import 'package:doctor_appointment_app/components/doctor_card.dart';
import 'package:doctor_appointment_app/model/doctor_class.dart';
import 'package:flutter/material.dart';

import '../components/categories.dart';
import '../components/topRatedDoctors.dart';
import '../model/categoriesLists.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({
    Key? key,
    this.doctor,
    this.categories,
  }) : super(key: key);

  final Doctor? doctor;
  final Categories? categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              // Custom App Bar
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'icons/menu-burger.png',
                        color: IconColors,
                      ),
                      Image.asset(
                        'icons/search1.png',
                        color: IconColors,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              // Card Design
              Container(
                height: 199,
                child: ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: doctorLists.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(indent: 0),
                  itemBuilder: (BuildContext context, int index) => DoctorCard(
                    doctor: doctorLists[index],
                  ),
                ),
              ),
              SizedBox(height: 25),
              // Text
              Container(
                padding: EdgeInsets.only(left: 32),
                child: Text(
                  "Categories ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 25),
              // Categories Part
              Container(
                height: 100,
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesLists.length,
                  itemBuilder: (_, int index) => CategoriesLists(
                    categories: categoriesLists[index],
                  ),
                ),
              ),
              SizedBox(height: 25),
              // TopDoctors
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Top Rated Doctors ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25),
              // TopDoctors
              Container(
                //height: 100,
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: doctorLists.length,
                  itemBuilder: (_, int index) => (TopRatedDoctors(
                    doctor: doctorLists[index],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
