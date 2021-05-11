/*
    all the Network work. we will Create an Api class that will request /Read/Delete/ update data from Firebase.
    That class will contain different methods like fetching data as a stream , getting the document by id, removing/deleting a document
 */

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class ApiService {
  final FirebaseFirestore _database = FirebaseFirestore.instance;
  final String path;
  CollectionReference collectionReference;
  
  ApiService (this.path) {
    collectionReference = _database.collection(path);
  }

  Future<QuerySnapshot> getDataCollection() {
    //return collectionReference.getDocuments()
    return collectionReference.get();
  }//end get data collection

  Stream<QuerySnapshot> streamDataCollection() {
    return collectionReference.snapshots();
  }//end stream data collection

  Future<DocumentSnapshot> getDocumentById(String id) {
    return collectionReference.doc(id).get();
  }//end get documents by id

  Future<void> removeDocument(String id) {
    return collectionReference.doc(id).delete();
  }//end remove document

  Future<DocumentReference> addDocument(Map data) {
    return collectionReference.add(data);
  }//end add document

  Future<void> updateDocument (Map data, String id) {
    return collectionReference.doc(id).update(data);
  }//end document
}//end class