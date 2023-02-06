class Categories {
  final String? categoriesName;
  final String? categoriesImage;

  Categories({
    this.categoriesName,
    this.categoriesImage,
  });
}

// Lists Of Doctors
var categoriesLists = [
  Categories(
    categoriesName: "Cardiologists",
    categoriesImage: "icons/cardio.png",
  ),
  Categories(
    categoriesName: "Eyes",
    categoriesImage: "icons/eye-scanner.png",
  ),
  Categories(
    categoriesName: "Kidney",
    categoriesImage: "icons/kidneys.png",
  ),
  Categories(
    categoriesName: "Pediatrician",
    categoriesImage: "icons/stethoscope.png",
  ),
];
