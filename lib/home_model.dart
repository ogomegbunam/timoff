import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppModel {
  String title;
  IconData icon;

  String navigation;

  AppModel(this.title, this.icon, this.navigation);

  static List<AppModel> getApps() => [
        AppModel("Apply for Leave", Icons.message, '/leave_application'),
        AppModel("Leave Status", FontAwesomeIcons.car, '/leave_status'),
        AppModel("Leave History", FontAwesomeIcons.utensils, '/leave_history'),
        AppModel("Staffs on Leave", FontAwesomeIcons.laptopMedical, '/staffs_on_leave'),
      ];
}
