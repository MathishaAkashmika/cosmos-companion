import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future addUser(String userId, Map<String, dynamic>  userInfoMap){
    return FirebaseFirestore.instance.collection("User").doc(userId).set(userInfoMap);
  }

  //Updates CRUD
  Future addUserDetails(Map<String, dynamic> userInfoMap) async {
    return await FirebaseFirestore.instance
        .collection("Updates")
        .doc()
        .set(userInfoMap);
  }

  Future<QuerySnapshot> getthisUserInfo(String name) async {
    return await FirebaseFirestore.instance
        .collection("Updates")
        .where("First Name", isEqualTo: name)
        .get();
  }

  Future UpdateUserData(String age, String id) async {
    return await FirebaseFirestore.instance
        .collection("Updates")
        .doc(id)
        .update({"Age": age});
  }

  Future DeleteUserData(String id)async{
    return await FirebaseFirestore.instance.collection("Updates").doc(id).delete();
  }
}