import 'package:flutter/material.dart';
import '../certifications/certifications.dart';
import '../educations/component/education_details.dart';
import '../experiences/component/experience_details.dart';
import '../intro/introduction.dart';
import '../main/components/drawer/drawer.dart';
import '../main/main_view.dart';
import '../projects/project_view.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      //CustomDrawer(),
      ProjectsView(),
      Certifications(),
      EducationListWidget(),
      ExperienceListWidget(),
    ]);
  }
}
