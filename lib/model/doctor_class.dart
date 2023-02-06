class Doctor {
  final String? firstName;
  final String? lastName;
  final String? image;
  final String? type;
  final double? rating;
  final String? patients;
  final String? exp;
  final String? description;
  final String? subdesc;
  final String? location;
  final String? tagImage;

  Doctor({
    this.firstName,
    this.lastName,
    this.image,
    this.type,
    this.rating,
    this.patients,
    this.exp,
    this.description,
    this.subdesc,
    this.location,
    this.tagImage,
  });
}

// Lists Of Doctors
var doctorLists = [
  Doctor(
      firstName: 'Albert ',
      lastName: 'Alexander',
      image: 'images/img-men-01.png',
      type: 'Kidney Specilist',
      rating: 4.3,
      patients: "162",
      exp: "4+",
      description:
          'Dr. Albert Alexanderis a Renal Physician who has comprehensive expertise in '
          'the fields of Renal Medicine and Internal Medicine. '
          'While Dr Ho specializes in dialysis and critical care '
          'nephrology, years of extensive training have also equipped '
          'him with skills to effectively handle a wide range of other '
          'kidney diseases, including kidney impairment, inflammation, '
          'infection and transplantation.',
      subdesc: 'Apart from kidney-related conditions, '
          'Dr Ho also offers care and consultation in various medical '
          'conditions that are related to kidney disease, '
          'such as hypertension, diabetes and vascular diseases.',
      location: 'Melbourn, Australia',
      tagImage: "image"),
  Doctor(
    firstName: 'Cherly ',
    lastName: 'Bishop',
    type: 'Bone Specilist',
    image: 'images/img-men-02.png',
    rating: 4.7,
  ),
  Doctor(
    firstName: 'Mathew ',
    lastName: 'Chambers',
    image: 'images/img-men-03.png',
    type: 'Herat Specilist',
    rating: 4.1,
  ),
];

//*
// Text Color Des and SubDes : 9E9E9E
// fontSize: 14,
// fontWeight: FontWeight.w300,
// Patients')
// Exp. Years
// Rating'),

//  Container(
//                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//                     decoration: BoxDecoration(
//                       color: HexColor('#FFF9EA'),
//                       border: Border.all(color: HexColor('#FFEDBE'), width: 1),
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                     child: Text(
//                       widget.doctor.type + ' Specialist',
//                       style: TextStyle(
//                         color: HexColor('#FFBF11'),
//                         fontSize: 11,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),

// location  C6C6CD   f : 14 : w400   height: 16,
// icon Location : C6C6CD   , size 14 , height: 8,

//    SizedBox(
//                     height: 91,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         DetailCell(title: '162', subTitle: 'Patients'),
//                         DetailCell(title: '4+', subTitle: ' Exp. Years'),
//                         DetailCell(title: '4273', subTitle: 'Rating'),
//                       ],
//                     ),
//                   ),

// */
