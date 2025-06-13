class ExperienceModel {
  final String organization;
  final String destination;
  final String date;
  final String skills;
  final String credential;

  ExperienceModel({
    required this.organization,
    required this.destination,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<ExperienceModel> experienceList = [
  ExperienceModel(
    organization: 'MicroMerger Pvt Ltd',
    destination: 'Flutter Developer',
    date: 'March 2025 - *Present',
    skills:
        'Flutter, Dart, RestAPIs, Provider State Management, Bloc, FireBase, SqliteDataBase, Responsive UI,Clean Code Architecture',
    credential: 'https://www.micromerger.com/',
  ),
  ExperienceModel(
    organization: 'The Biz Buzz Agency',
    destination: 'Flutter Developer',
    date: 'Dec 2024 - Feb 2025',
    skills:
        'Flutter, Dart, RestAPIs, Provider State Management, FireBase, Responsive UI',
    credential: 'https://thebizbuzzagency.com/',
  ),
  ExperienceModel(
    organization: 'National Telecom Corporation (NTC)',
    destination: 'Networking InterShip',
    date: 'Jan 2025 - Feb 2025',
    skills:
        'Networking Protocols,Network Configuration,Firewall & Security,Troubleshooting & problem-solving,Vm-Ware,Virtulization,IT Support',
    credential: 'https://ntc.net.pk/',
  ),
  ExperienceModel(
    organization: 'Techno Spot Nastp',
    destination: 'Flutter InterShip',
    date: 'May 2023 - July 2023',
    skills:
        'Flutter, Dart, RestAPIs, Provider State Management, FireBase, Responsive UI',
    credential: 'https://technospotnastp.com/',
  ),
];
