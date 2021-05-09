import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'album_main.dart';

//Generate a mock client using the mockito package
//Create a new instance of this class in each test

@GenerateMocks([http.Client])
void main () {
  //we create our test group because we have multiple tests
  group('fetch album tests', () {
    //the first test
    // test('returns an album if the http call completes succesfully', () async {
    //   //here after you have written your own mocking class this is where you call it.
    //   final client = MockClient();
    //
    //   //use mockito to return a succesful resposnse when it calls the provided http client
    //   when(client.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1')))
    //   .thenAnswer((_) async => http.Response('{"userId": 1, "id": 2,"title": "mock"}',200));
    //
    //   expect(await fetchAlbum(client),isA<Album>());
    //
    //   test('throws an exception if the http call completes with an error', () {
    //     final client = MockClient();
    //
    //     // Use Mockito to return an unsuccessful response when it calls the
    //     // provided http.Client.
    //     when(client.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1')))
    //         .thenAnswer((_) async => http.Response('Not Found', 404));
    //
    //     expect(fetchAlbum(client), throwsException);
    // });
  });
}//end main
