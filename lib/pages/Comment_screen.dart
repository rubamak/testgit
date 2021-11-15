// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';
// import 'package:my_product/color/my_colors.dart';
//
//
//
//
//
//
//
//   Future fetchSpecifiedComment() async {
//     //استخراج البرودكت من الفايبر بيس
//     //هذا اللي يجيب ال doc على الابلكيشن
//     try {
//       await FirebaseFirestore.instance
//           .collection('comments')
//           .where('product id', isEqualTo: widget.productId)
//           .get()
//           .then((specifiedDoc) async {
//         if (specifiedDoc != null && specifiedDoc.docs.isEmpty == false) {
//           setState(() {
//             commmentsList = specifiedDoc;
//           });
//         } else {
//           print('No Docs Found');
//         }
//       });
//     } catch (e) {
//       print('Error Fetching Data$e');
//     }
//     //}
// //print( " hereeree ${productsList.docs[1].data()}");
//     // يطبع كل منتج ف لازم يكون الانديس هو i
//   }
//   @override
//   void initState() {
//     fetchSpecifiedComment();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     if (commmentsList != null) {
//             },
//             // color: black,
//           ),
//
//           backgroundColor: basicColor,
//         ),
//         body: new
//                 child:
//                     itemBuilder: (context, i) {
//                       return Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             Container(
//                               child: Row(
//                                 children: <Widget>[
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Column(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.center,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.start,
//                                     children: <Widget>[
//                                       Text(commmentsList.docs[i].data()['Comment'].toString() ??
//                                           "none",
//                                         softWrap: true,
//                                         overflow: TextOverflow.fade,
//                                         style: TextStyle(
//                                             color: black,
//                                             fontSize: 17,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                     separatorBuilder: (context, i) => Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Container(
//                         height: 3,
//                         color: basicColor,
//                       ),
//                     ),
//                     itemCount: commmentsList.docs.length),
//                 //it was here
//                 key: _formKey,
//               ),
//             ),
//             Expanded(
//               child:
//                   children: [
//                     SizedBox(
//                       height: 50,
//                     ),
//
//                     IconButton(
//                         onPressed: (){addComments();},
//                         icon: Icon(Icons.send_outlined)
//                     ),
//                     SizedBox(height: 15),
//
//                   ],
//
//               ),
//             )
//           ],
//         ),
//
//       );
//     } else {
//       return Scaffold(
//           backgroundColor: white,
//           appBar: AppBar(
//             iconTheme: IconThemeData(color: black),
//             toolbarHeight: 100,
//             centerTitle: true,
//             elevation: 0,
//             leading: IconButton(
//               icon: Icon(Icons.arrow_back_ios, color: black),
//               onPressed: () {
//                 Get.back();
//               },
//               // color: black,
//             ),
//             title: Padding(
//               padding: EdgeInsets.only(top: 1),
//               child: Text(
//                 "Add comment",
//                 style: TextStyle(color: black, fontSize: 25),
//               ),
//             ),
//             backgroundColor: basicColor,
//           ),
//           body: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("No Comments"),
//                 TextField(
//                   controller: CommentsController,
//                   decoration:
//                   InputDecoration(hintText: "write your comment"),
//                 ),
//                 IconButton(
//                     onPressed:(){ addComments();},
//                     icon: Icon(Icons.send_outlined)
//                 ),
//                 SizedBox(height: 15),
//
//               ]));
//     }
//   }
//
//   Future addComments() async {
//     FocusScope.of(context).unfocus();
//     var commentRef = await FirebaseFirestore.instance.collection('comments');
//       try {
//         commentRef.add({
//           'uid': firebaseUser.uid,
//           'product id': widget.productId,
//           'Comment': CommentsController.text,
//           'addedAt': Timestamp.now(),
//         }).then((value) {
//           print('comment added');
//           Fluttertoast.showToast(
//             msg: 'comment added',
//           );
//           Get.off(() => CommentsPage());
//           //Navigator.of(context).pop();
//         });
//       } catch (e) {
//         print("error when adding comment: $e");
//       }
//
//   }
//
//
//
// }
