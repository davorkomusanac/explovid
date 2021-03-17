import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/data/models/our_user/our_user.dart';

class UserActionsRepository {
  CollectionReference _users = FirebaseFirestore.instance.collection('users');

  Future<List<OurUser>> searchUsersWithUsername({String usernameSearchTerm}) async {
    List<OurUser> searchUsersResult = [];
    try {
      var querySnapshot = await _users
          .orderBy('username', descending: false)
          .where('username', isGreaterThanOrEqualTo: usernameSearchTerm.toLowerCase())
          .limit(10)
          .get();
      for (var userQueryDocSnap in querySnapshot.docs) {
        searchUsersResult.add(OurUser.fromSnapshot(userQueryDocSnap));
      }
    } catch (error) {
      print(error.toString());
    }
    return searchUsersResult;
  }

  Future<List<OurUser>> getSearchUsersWithUsernameNextPage({
    String usernameSearchTerm,
    OurUser lastUserInList,
  }) async {
    List<OurUser> nextPageSearchUsersResult = [];
    try {
      var querySnapshot = await _users
          .orderBy('username', descending: false)
          .where('username', isGreaterThanOrEqualTo: usernameSearchTerm.toLowerCase())
          .startAfter([lastUserInList.username])
          .limit(10)
          .get();
      for (var userQueryDocSnap in querySnapshot.docs) {
        nextPageSearchUsersResult.add(OurUser.fromSnapshot(userQueryDocSnap));
      }
    } catch (error) {
      print(error.toString());
    }
    return nextPageSearchUsersResult;
  }
}
