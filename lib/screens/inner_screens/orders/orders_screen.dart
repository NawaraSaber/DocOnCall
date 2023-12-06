// import 'package:flutter/material.dart';

// import '../../../services/assets_manager.dart';
// import '../../../widgets/empty_bag.dart';
// import '../../../widgets/title_text.dart';
// import 'order_widget.dart';

// class OrdersScreenFree extends StatefulWidget {
//   static const routeName='/OrderScreen';
//   const OrdersScreenFree({super.key});

//   @override
//   State<OrdersScreenFree> createState() => _OrdersScreenFreeState();
// }

// class _OrdersScreenFreeState extends State<OrdersScreenFree> {
//   bool isEmptyOrder = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const TitleTextWidget(lablel: "Placed orders",
//         ),
//       ),
//       body: isEmptyOrder
//       ? EmptyBagWidget(imagePath: AssetsManager.orderBag, 
//       title: "No orders has been placed yet", 
//       subtitle: "", 
//       buttonText: "Shop Now")
//       : ListView.separated(
//         itemCount: 15,
//         itemBuilder: (ctx,index){
//           return const Padding(padding: EdgeInsets.symmetric(horizontal: 2,vertical: 6),
//            child: OrderWidgetFree(),
//           );
//         },
//         separatorBuilder: (BuildContext , int index){
//           return const Divider();
//         },
//         ),
//     );
//   }
// }