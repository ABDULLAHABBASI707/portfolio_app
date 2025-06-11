class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Getting started with Flutter Development',
    organization: 'Aridian Software Society',
    date: 'AUG 2023',
    skills: 'Flutter . Dart',
    credential:
        '',
  ),
  CertificateModel(
    name: ' Essential Training: Build for Building website Using WordPress',
    organization: 'DigiSkills',
    date: 'JUN - JUL 2021',
    skills: 'WordPress',
    credential:
        'https://drive.google.com/file/d/1NKHj1tIOb9ZaTStl5bR1V9fjZtYqABR1/view?usp=drive_link',
  ),
];
