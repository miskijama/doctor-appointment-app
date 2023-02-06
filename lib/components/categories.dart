import 'package:doctor_appointment_app/model/categoriesLists.dart';
import 'package:flutter/material.dart';

class CategoriesLists extends StatelessWidget {
  const CategoriesLists({Key? key, required this.categories}) : super(key: key);
  final Categories? categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        width: 100,
        height: 100,
        clipBehavior: Clip.hardEdge,
        padding: EdgeInsets.only(top: 14),
        decoration: BoxDecoration(
          color: Color(0xffEDFDFA),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(categories?.categoriesImage ?? ""),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    categories?.categoriesName ?? "",
                    style: TextStyle(
                      color: Color(0xff010101),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Color(0xffE1F7F4),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10))),
                ),
                Positioned(
                  left: 10,
                  child: Text(
                    'Specialist',
                    style: TextStyle(
                      color: Color(0xff696969),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
