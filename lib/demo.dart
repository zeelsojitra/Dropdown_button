//
// import 'package:flutter/material.dart';
//
// import 'package:sizer/sizer.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   // PickImage(ImageSource imageSource) async {
//   //   final file = await picker.pickImage(source: imageSource);
//   //   if (file != null) {
//   //     setState(() {
//   //       image = File(file.path);
//   //     });
//   //   }
//   // }
//   DateTime date = DateTime.now();
//   final globalKey = GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: globalKey,
//       backgroundColor: white,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   height: 70.sp,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(30),
//                           bottomLeft: Radius.circular(30)),
//                       gradient: LinearGradient(colors: [
//                         DarkGreen2,
//                         LightGreen,
//                       ])),
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(
//                         vertical: 15.sp, horizontal: 15.sp),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         InkWell(
//                             onTap: () {
//                               globalKey.currentState!.openDrawer();
//                             },
//                             child: Icon(
//                               Icons.menu_open,
//                               color: white,
//                               size: 30,
//                             )),
//                         Spacer(),
//                         Comman_Text(
//                           text: "Nest In",
//                           color: white,
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         Spacer(),
//                         SizedBox(
//                           width: 40.sp,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: -20,
//                   left: 30,
//                   right: 30,
//                   child: Container(
//                     height: 37.sp,
//                     width: 263.sp,
//                     child: Center(
//                       child: Comman_TexxtFiled(
//                         filled: true,
//                         fillcolor: Colors.grey.shade200,
//                         hinttext: "What are you looking for?",
//                         prefixicon: Icon(
//                           Icons.search_rounded,
//                           size: 20,
//                           color: grey,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20.sp,
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 physics: BouncingScrollPhysics(),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     GetBuilder<Controller>(
//                       builder: (controller) {
//                         return Column(
//                           children: [
//                             Stack(
//                               children: [
//                                 VxSwiper.builder(
//                                   onPageChanged: (index) {
//                                     controller.Pageview(index);
//                                   },
//                                   aspectRatio: 16 / 9,
//                                   height: 130.sp,
//                                   autoPlayAnimationDuration:
//                                       Duration(seconds: 2),
//                                   enlargeCenterPage: true,
//                                   itemCount: Pageview.length,
//                                   itemBuilder: (context, index) {
//                                     return Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Comman_Container(
//                                         child: Padding(
//                                           padding: EdgeInsets.symmetric(
//                                               vertical: 15.sp,
//                                               horizontal: 15.sp),
//                                           child: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Comman_Text(
//                                                 text: Pageview[index]['title'],
//                                                 color: white,
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 20.sp,
//                                               ),
//                                               SizedBox(
//                                                 height: 5.sp,
//                                               ),
//                                               Comman_Text(
//                                                 text: Pageview[index]
//                                                     ['subtitile'],
//                                                 color: white,
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 18.sp,
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                         width: double.infinity,
//                                         color: red,
//                                         borderRadius: BorderRadius.circular(20),
//                                         image: DecorationImage(
//                                           fit: BoxFit.cover,
//                                           image: AssetImage(
//                                             Pageview[index]['image'],
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 ),
//                                 Positioned(
//                                   bottom: 15,
//                                   right: 0,
//                                   left: 0,
//                                   child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: List.generate(
//                                         3,
//                                         (index) => Padding(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 1.sp),
//                                           child: CircleAvatar(
//                                             radius: 5,
//                                             backgroundColor:
//                                                 controller.onchange == index
//                                                     ? green
//                                                     : white,
//                                           ),
//                                         ),
//                                       )),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: EdgeInsets.symmetric(vertical: 10.sp),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 10.sp),
//                                     child: Row(
//                                       children: [
//                                         Comman_Text(
//                                           text: "Catalogue",
//                                           fontSize: 17.sp,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                         Spacer(),
//                                         TextButton(
//                                           onPressed: () {
//                                             Navigator.push(
//                                               context,
//                                               MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     CategoryScreen_2(),
//                                               ),
//                                             );
//                                           },
//                                           child: Comman_Text(
//                                             text: "See All  >",
//                                             fontSize: 13.sp,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10.sp,
//                                   ),
//                                   SizedBox(
//                                     height: 73.sp,
//                                     child: ListView.builder(
//                                       physics: BouncingScrollPhysics(),
//                                       padding: EdgeInsets.only(right: 20.sp),
//                                       itemCount: Catalogue.length,
//                                       scrollDirection: Axis.horizontal,
//                                       itemBuilder: (context, index) {
//                                         return Container(
//                                           margin: EdgeInsets.only(left: 15.sp),
//                                           width: 70.sp,
//                                           decoration: BoxDecoration(
//                                               image: DecorationImage(
//                                                 colorFilter: ColorFilter.mode(
//                                                   black54,
//                                                   BlendMode.darken,
//                                                 ),
//                                                 image: AssetImage(
//                                                     Catalogue[index]['img']),
//                                                 fit: BoxFit.cover,
//                                               ),
//                                               borderRadius:
//                                                   BorderRadius.circular(12)),
//                                           child: Center(
//                                             child: Comman_Text(
//                                               text: Catalogue[index]['name'],
//                                               color: white,
//                                               fontSize: 13.sp,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         );
//                                       },
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 20.sp,
//                                   ),
//                                   Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 10.sp),
//                                     child: Comman_Text(
//                                       text: "Products",
//                                       fontSize: 18.sp,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10.sp,
//                                   ),
//                                   StreamBuilder(
//                                     stream: FirebaseFirestore.instance
//                                         .collection('user')
//                                         .doc(FirebaseAuth
//                                             .instance.currentUser!.uid)
//                                         .snapshots(),
//                                     builder: (BuildContext context,
//                                         AsyncSnapshot<
//                                                 DocumentSnapshot<
//                                                     Map<String, dynamic>>>
//                                             snap) {
//                                       if (snap.hasData) {
//                                         return StreamBuilder(
//                                           stream: FirebaseFirestore.instance
//                                               .collection('Product')
//                                               .snapshots(),
//                                           builder: (BuildContext context,
//                                               AsyncSnapshot<
//                                                       QuerySnapshot<
//                                                           Map<String, dynamic>>>
//                                                   snapshot) {
//                                             if (snapshot.hasData) {
//                                               var data = snapshot.data!.docs;
//                                               return GridView.builder(
//                                                 shrinkWrap: true,
//                                                 itemCount:
//                                                     snapshot.data!.docs.length,
//                                                 physics:
//                                                     NeverScrollableScrollPhysics(),
//                                                 gridDelegate:
//                                                     SliverGridDelegateWithFixedCrossAxisCount(
//                                                         mainAxisSpacing: 1,
//                                                         crossAxisSpacing: 1,
//                                                         crossAxisCount: 2,
//                                                         mainAxisExtent: 290),
//                                                 itemBuilder: (context, index) {
//                                                   final product = snapshot
//                                                       .data!.docs[index];
//                                                   return Padding(
//                                                     padding:
//                                                         EdgeInsets.symmetric(
//                                                             horizontal: 10.sp),
//                                                     child: Column(
//                                                       crossAxisAlignment:
//                                                           CrossAxisAlignment
//                                                               .start,
//                                                       children: [
//                                                         Stack(
//                                                           clipBehavior:
//                                                               Clip.none,
//                                                           children: [
//                                                             GestureDetector(
//                                                               onTap: () {
//                                                                 Navigator.push(
//                                                                     context,
//                                                                     MaterialPageRoute(
//                                                                       builder:
//                                                                           (context) =>
//                                                                               DetilsScreen(
//                                                                         sid: product[
//                                                                             'seller_id'],
//                                                                         pid: product[
//                                                                             'product_id'],
//                                                                         buynow:
//                                                                             snap.data!['buyNow'],
//                                                                         image: product[
//                                                                             'image'],
//                                                                         category:
//                                                                             product["product_catagory"],
//                                                                         details:
//                                                                             product["product_details"],
//                                                                         name: product[
//                                                                             "product_name"],
//                                                                         price: product[
//                                                                             "product_price"],
//                                                                         stock: product[
//                                                                             'product_stock'],
//                                                                       ),
//                                                                     ));
//                                                               },
//                                                               child: Container(
//                                                                 height: 150.sp,
//                                                                 width: double
//                                                                     .infinity,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   color: white,
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               15),
//                                                                   image:
//                                                                       DecorationImage(
//                                                                     image: NetworkImage(
//                                                                         product!['image']
//                                                                             .toString()),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8.sp,
//                                                         ),
//                                                         Comman_Text(
//                                                           text: product[
//                                                               "product_name"],
//                                                           fontWeight:
//                                                               FontWeight.w500,
//                                                           fontSize: 15.sp,
//                                                         ),
//                                                         SizedBox(
//                                                           height: 6.sp,
//                                                         ),
//                                                         Row(
//                                                           children: [
//                                                             Comman_Text(
//                                                               text: "₹",
//                                                               fontSize: 14.sp,
//                                                               color: black54,
//                                                             ),
//                                                             SizedBox(
//                                                               width: 2.sp,
//                                                             ),
//                                                             Comman_Text(
//                                                               text: product[
//                                                                   'product_price'],
//                                                               fontSize: 17.sp,
//                                                               color: red,
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .w500,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   );
//                                                 },
//                                               );
//                                             } else {
//                                               return Center(
//                                                 child:
//                                                     CircularProgressIndicator(),
//                                               );
//                                             }
//                                           },
//                                         );
//                                       } else {
//                                         return Center(
//                                           child: CircularProgressIndicator(),
//                                         );
//                                       }
//                                     },
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       drawer: DrawerScreen(),
//     );
//   }
// }
