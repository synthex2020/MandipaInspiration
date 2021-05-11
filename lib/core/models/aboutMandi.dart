/*
    This model holds all the about information for mandipa
    hours, name, who we are, mission
 */

import 'package:flutter/foundation.dart';

class AboutMandi {
  String name;
  String hours;
  String whoweare;
  String mission;

  //constructor
  AboutMandi({@required this.name, @required this.hours, this.mission, this.whoweare});

  //when data is fetched from the store it is json format this allows us to interpret this

  AboutMandi.fromMap(Map snapshot, String id) :
      name = snapshot['name'] ?? '',
      hours = snapshot['hours'] ?? '',
      whoweare = snapshot['whoweare'] ?? '',
      mission = snapshot['ourmission'] ?? '';

  //now we want to map the data back into json format before uploading to firebase

  toJson() {
    return {
      "name" : name,
      "hours" : hours,
      "whoweare" : whoweare,
      "ourmission" : mission,
    };
  }
}//end class