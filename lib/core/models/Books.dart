
import 'package:flutter/cupertino.dart';

class Books {
  //Data class to hold books object
  String amazonLink ,author, description, etsyLink, language, logo, name, mcNallyLink,price ;

  Books({@required this.name, @required this.author, @required this.logo, @required this.description,
    this.price, this.amazonLink, this.etsyLink, this.language, this.mcNallyLink
  });

}//end class