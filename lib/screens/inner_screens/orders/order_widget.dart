// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
// import 'package:flutter/material.dart';

// import '../../../consts/app_constans.dart';
// import '../../../widgets/subtitle_text.dart';
// import '../../../widgets/title_text.dart';

// class OrderWidgetFree extends StatefulWidget {
//   const OrderWidgetFree({super.key});

//   @override
//   State<OrderWidgetFree> createState() => _OrderWidgetFreeState();
// }

// class _OrderWidgetFreeState extends State<OrderWidgetFree> {
//   bool isLoading = false;
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
//       child: Row(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: FancyShimmerImage(
//               imageUrl: AppConstans.productImageUrl,
//               height: size.width * 0.25,
//               width: size.width * 0.25,
//             ),
//           ),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Flexible(
//                         child: TitleTextWidget(
//                           lablel: "Product Title",
//                           maxLines: 2,
//                           fontSize: 15,
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.clear,
//                           color: Colors.red,
//                           size: 22,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Row(
//                     children: [
//                       TitleTextWidget(
//                         lablel: "Price:   ",
//                         fontSize: 15,
//                       ),
//                       Flexible(
//                         child: SubtitleTextWidget(
//                           label: "11.99",
//                           fontSize: 15,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const SubtitleTextWidget(
//                     label: "10",
//                     fontSize: 15,
//                   ),
//                   // const Row(
//                   //   children: [
//                   //     Flexible(
//                   //       child: TitleTextWidget(
//                   //         lablel: "Qty:  ",
//                   //         fontSize: 15,
//                   //       ),
//                   //     ),
//                   //     Flexible(
//                   //       child: SubtitleTextWidget(
//                   //         label: "10",
//                   //         fontSize: 15,
//                   //       ),
//                   //     )
//                   //   ],
//                   // ),
//                   const SizedBox(
//                     height: 5,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
