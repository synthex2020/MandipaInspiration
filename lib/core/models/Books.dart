
import 'package:flutter/cupertino.dart';

class Books {
  //Data class to hold books object
  String amazonLink ,author, description, etsyLink, language, logo, name, mcNallyLink,price ;

  Books({@required this.name, @required this.author, @required this.logo, @required this.description,
    this.price, this.amazonLink, this.etsyLink, this.language, this.mcNallyLink
  });

//when data is fetched from the store it is json format this allows us to interpret this
  Books.fromMap(Map snapshot, String id):
      amazonLink = snapshot['amazonLink'] ?? '',
      author = snapshot['author'] ?? '',
      description = snapshot['description'] ?? '',
      etsyLink = snapshot['etsyLink'] ?? '',
      language = snapshot['language'] ?? '',
      logo = snapshot['logo'] ?? '',
      mcNallyLink = snapshot['mcNallyLink'] ?? '',
      name = snapshot['name'] ?? '',
      price = snapshot['price'] ?? '';

//now we want to map the data back into json format before uploading to firebase
  toJson() {
    return {
      "amazonLink" : amazonLink,
      "author" : author,
      "description" : description,
      "etsyLink" : etsyLink,
      "language" : language,
      "logo" : logo,
      "mcNallyLink" : mcNallyLink,
      "name" : name,
      "price":price,
    };
  }//end to json

}//end class