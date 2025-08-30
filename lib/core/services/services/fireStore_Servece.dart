import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruts_store/core/services/services/DataBase_Serveces.dart';

//دا كلاس خاص بالفير بيز وبيرث من DatabaseServeces
class FirestoerServeces implements DataBaseServeces {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId}) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  // Future<dynamic> getData(
  //     {required String path,
  //     String? documentId,
  //     Map<String, dynamic>? query}) async {
  //   if (documentId != null) {
  //     var data = await firestore.collection(path).doc(documentId).get();
  //     return data.data();
  //   } else {
  //     Query<Map<String, dynamic>> data = firestore.collection(path);
  //     if (query != null) {
  //       if (query['orderBy'] != null) {
  //         var orderByFiald = query['orderBy'];
  //         var descending = query['descending'];
  //         data = data.orderBy(orderByFiald, descending: descending);
  //       }
  //       if (query['limit'] != null) {
  //         var limit = query['limit'];
  //         data = data.limit(limit);
  //       }
  //     }
  //     var result = await data.get();
  //     return result.docs.map((e) => e.data()).toList();
  //   }
  // }


  Future<dynamic> getData({
    required String path,
    String? documentId,
    Map<String, dynamic>? query,
  }) async {
    if (documentId != null) {
      var data = await firestore.collection(path).doc(documentId).get();
      return data.data();
    } else {
      Query<Map<String, dynamic>> data = firestore.collection(path);

      // لو فيه keyword للبحث
      if (query != null) {
        // البحث عن كلمة في حقل معين
        if (query['searchField'] != null && query['keyword'] != null) {
          var field = query['searchField'];
          var keyword = query['keyword'];

          data = data
              .orderBy(field)
              .startAt([keyword])
              .endAt(['$keyword\uf8ff']);
        }

        // ترتيب النتائج
        if (query['orderBy'] != null) {
          var orderByField = query['orderBy'];
          var descending = query['descending'] ?? false;
          data = data.orderBy(orderByField, descending: descending);
        }

        // تحديد عدد النتائج
        if (query['limit'] != null) {
          var limit = query['limit'];
          data = data.limit(limit);
        }
      }

      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> chackIfDataExist(
      {required String path, required String documentId}) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }
  
}
