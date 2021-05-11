/*
    This model is used to store the services provided by mandi
    takes name and description
 */

import 'package:flutter/cupertino.dart';

class Service {
  String serviceName;
  String serviceDescription;

  Service({@required this.serviceName, @required this.serviceDescription});

//when data is fetched from the store it is json format this allows us to interpret this
  Service.fromMap (Map snapshot, String id):
      serviceName = snapshot['name'] ?? '',
      serviceDescription = snapshot['description'] ?? '';

//now we want to map the data back into json format before uploading to firebase
  toJson() {
    return {
      "name" : serviceName,
      "description" : serviceDescription,
    };
  }//end to json
}//end class