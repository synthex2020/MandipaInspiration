import 'package:flutter/material.dart';
import 'package:mandipainspiration/core/models/Books.dart';

/*
    This widget is also supposed to utilize refresh indicator, not yet sure how to implement
    Maybe we will have the logic in the core take of things
 */

class Books_display extends StatelessWidget {

  //data base stub
  List books = [];
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Container(
      child: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
        itemCount: books.length,
        itemBuilder: (context , index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: GridTile(
                child: Image.network(books[index].logo),
              ),
              onTap: () {
                print("hello");
              },
            ),
          );
        },

      ),
      height: MediaQuery.of(context).size.height,
    );
  }
}


/*
    This widget displays a single book
    A thought towards making the widget seperate from the buttons for now they are not.
 */
class Book_view extends StatelessWidget {
  //database stub - the book model has not been populated
  Books book;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(image: NetworkImage(book.logo),),
        Text(book.name),
        Text(book.price),
        Text(book.description),
        // Row(
        //   children: [
        //     Expanded(
        //       child: FlatButton(child: Text("McNally"),),
        //     ),
        //     Expanded(
        //       child: FlatButton(child: Text("Amazon"),),
        //     ),
        //     Expanded(
        //       child: FlatButton(child: Text("Etsy"),),
        //     ),
        //   ],
        // )
      ],
    );
  }
}

