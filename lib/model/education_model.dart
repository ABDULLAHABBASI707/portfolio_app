class EducationModel {
  final String name;
  final String education;
  final String date;
  final String credential;

  EducationModel({
    required this.name,
    required this.education,
    required this.date,
    required this.credential,
  });
}

List<EducationModel> educationList = [
  EducationModel(
    name: 'PMAS Arid Agriculture University Rawalpindi',
    education: 'BSIT',
    date: 'OCT 2020 -AUG 2020',
    credential: 'https://www.uaar.edu.pk/index.php',
  ),
  EducationModel(
    name: 'Chinar Army Public College Murree',
    education: 'Fsc Pre-Eng',
    date: 'AUG 2018 - JUL 2020',
    credential: 'https://www.chinar.edu.pk/',
  ),
  EducationModel(
    name: 'Green Land Public School System Murree',
    education: 'Matric ',
    date: 'March 2016 - JUL 2018',
    credential: 'https://www.greenland.edu.pk/version1.0/',
  ),
];
