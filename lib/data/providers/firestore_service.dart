// import 'dart:io';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fl_mobile/models/response/chat_item.dart';
// import 'package:fl_mobile/models/response/message_item.dart';
// import 'package:fl_mobile/models/response/user_session.dart';
// import 'package:fl_mobile/models/user.dart';
// import 'package:fl_mobile/shared/log.dart';
// import 'package:fl_mobile/shared/utility.dart';
//
// class FirestoreService {
//   final userCollection = FirebaseFirestore.instance.collection('merchants');
//   final userSettings = FirebaseFirestore.instance.collection('userSettings');
//
//   // User Manager
//   Future<List<MessageItem>> getUserWithId(String id) async {
//     var messageItem = List<MessageItem>();
//     QuerySnapshot snap =
//         await userCollection.doc(id).collection("threads").get();
//     snap.docs.forEach((element) async {
//       Log.v("Document: " + element.data().toString());
//       messageItem.add(MessageItem.fromJson(element.data()));
//     });
//     return messageItem;
//   } // User Manager
//
//   Future<MessageItem> getUserWithSingleThreadId(
//       String id, String threadId) async {
//     var messageItem;
//     QuerySnapshot snap = await userCollection
//         .doc(id)
//         .collection("threads")
//         .where("id", isEqualTo: threadId)
//         .get();
//     snap.docs.forEach((element) async {
//       Log.v(
//           "Document:-----------------------------" + element.data().toString());
//       messageItem = MessageItem.fromJson(element.data());
//     });
//     return messageItem;
//   }
//
//   Future<List<ChatItem>> getMessagesByDocId(String userId, String docId) async {
//     var chatItemList = List<ChatItem>();
//     QuerySnapshot snap = await userCollection
//         .doc(userId)
//         .collection("threads")
//         .doc(docId)
//         .collection("messages")
//         .get();
//     snap.docs.forEach((element) async {
//       Log.v("Message Documen: " + element.data().toString());
//       chatItemList.add(ChatItem.fromJson(element.data()));
//     });
//     return chatItemList;
//   }
//
//   void registerNewMessageListener(String userId, String docId,
//       {Function onNewMessage}) {
//     CollectionReference reference = userCollection
//         .doc(userId)
//         .collection("threads")
//         .doc(docId)
//         .collection("messages");
//     reference.snapshots().listen((event) {
//       if (onNewMessage != null) {
//         event.docChanges.forEach((change) {
//           // Do something with change
//           Log.v(change.doc.data());
//           if (change.doc.data() != null)
//             onNewMessage(ChatItem.fromJson(change.doc.data()));
//         });
//       }
//     });
//   }
//
//   void registerNewSingleThreadId(String userId, String docId,
//       {Function onNewMessage}) {
//     DocumentReference reference =
//     userCollection.doc(userId).collection("threads").doc(docId);
//     reference.snapshots().listen((event) {
//       if (onNewMessage != null) {
//         onNewMessage(MessageItem.fromJson(event.data()));
//       }
//     });
//   }
//
//   void registerNewThreadListener(String userId, {Function onNewThread}) {
//     var messageItem = List<MessageItem>();
//     CollectionReference reference =
//         userCollection.doc(userId).collection("threads");
//     reference.snapshots().listen((event) {
//       if (onNewThread != null) {
//         event.docChanges.forEach((change) {
//           // Do something with change
//           Log.v(change.doc.data());
//           messageItem.add(MessageItem.fromJson(change.doc.data()));
//         });
//         onNewThread(messageItem);
//       }
//     });
//   }
//
//   Future<UserModel> getUserWithReference(DocumentReference reference) async {
//     dynamic snap = await reference.get();
//
//     return UserModel.fromJson(snap);
//   }
//
//   Future<UserModel> getAllDocuments() async {
//     QuerySnapshot snap = await userCollection.getDocuments();
//     var list = snap.docs;
//     list.forEach((element) async {
//       Log.v(element.data());
//     });
//
//     return null;
//   }
//
//   Future<void> createUser(UserModel userModel) async {
//     return userCollection.doc(userModel.uid).set(userModel.toJson());
//   }
//
//   Stream<UserModel> streamUser(String uid) {
//     return userCollection.doc(uid).snapshots().map((event) {
//       return UserModel.fromJson(event.data());
//     });
//   }
//
//   Stream<DocumentSnapshot> streamSnap(String uid) {
//     print(uid);
//     return userCollection.doc(uid).snapshots();
//   }
//
//   Future<void> updateUser(String id, Map<String, dynamic> body) async {
//     return userCollection.doc(id).update(body);
//   }
//
//   Future<void> updateMessageThread(
//       String userId, String id, Map<String, dynamic> body) async {
//     return userCollection
//         .doc(userId)
//         .collection("threads")
//         .doc(id)
//         .update(body);
//   }
//
//   Future<void> updateUserSetting(String userId) async {
//     Map<String, dynamic> body = Map<String, dynamic>();
//     DateTime currentTime = DateTime.now();
//     if (UserSession.fcmToken != null) body['token'] = UserSession.fcmToken;
//     body['platform'] = Platform.isIOS ? 'iOS' : 'android';
//     if (UserSession.fcmToken != null)
//       body['createdAt'] =
//           "${Utility.convertDateFormat(currentTime, format: 'MMMM dd, yyyy')} at ${Utility.convertDateFormat(currentTime, format: 'hh:mm a')} UTC ${currentTime.timeZoneOffset}";
//     Log.v("$userId FCm Data $body");
//     return userSettings.doc(userId).collection("tokens").doc("fcm").set(body);
//   }
//
//   Future<Map<String, dynamic>> getNotificationSetting(
//     String userId,
//   ) async {
//     Map<String, dynamic> userSetting = Map<String, dynamic>();
//     DocumentSnapshot data = await userSettings
//         .doc(userId)
//         .collection("notifications")
//         .doc("fcm")
//         .get();
//     dynamic settingData = data.data();
//     if (settingData == null) return userSetting;
//     userSetting['notification_push_chat_thread_new'] =
//         settingData['notification_push_chat_thread_new'];
//     userSetting['notification_push_chat_message_new'] =
//         settingData['notification_push_chat_message_new'];
//     userSetting['notification_push_chat_hand_raise'] =
//         settingData['notification_push_chat_hand_raise'];
//     userSetting['notification_push_chat_end'] =
//         settingData['notification_push_chat_end'];
//     userSetting['notification_push_review_new'] =
//         settingData['notification_push_review_new'];
//     userSetting['notification_push_enable'] =
//         settingData['notification_push_enable'];
//     Log.v("$userId FCm Data $userSetting");
//     return userSetting;
//   }
//
//   Future<void> updateCurrentUser(uid, Map<String, dynamic> body) async {
//     body['updatedAt'] = Timestamp.now();
//     return FirebaseFirestore.instance.collection('users').doc(uid).update(
//           body,
//         );
//   }
//
//   Future<UserCredential> signInWithToken(String token) async {
//     UserCredential result =
//       await FirebaseAuth.instance.signInWithCustomToken(token);
//     return result;
//   }
//
//   Future<void> updateNotificationSetting(String userId,
//       {bool newMessage,
//         bool newReview,
//         bool handRaise,
//         bool chatEnds,
//         bool newChatInitiated,
//         bool enableNotification}) {
//     Map<String, dynamic> body = Map<String, dynamic>();
//     if (newChatInitiated != null)
//       body['notification_push_chat_thread_new'] = newChatInitiated;
//     if (newMessage != null)
//       body['notification_push_chat_message_new'] = newMessage;
//     if (handRaise != null)
//       body['notification_push_chat_hand_raise'] = handRaise;
//     if (chatEnds != null) body['notification_push_chat_end'] = chatEnds;
//     if (newReview != null) body['notification_push_review_new'] = newReview;
//     if (enableNotification != null)
//       body['notification_push_enable'] = enableNotification;
//     Log.v("$userId FCm Data $body");
//     return userSettings
//         .doc(userId)
//         .collection("notifications")
//         .doc("fcm")
//         .set(body);
//   }
// }
