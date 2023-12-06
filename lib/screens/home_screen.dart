import 'package:card_swiper/card_swiper.dart';
import 'package:doc_on_call/providers/product_provider.dart';
import 'package:doc_on_call/widgets/products/latest_arrival.dart';
import 'package:doc_on_call/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../consts/app_constans.dart';
import '../services/assets_manager.dart';
import '../widgets/app_name_text.dart';
import '../widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required String title});
  String? get routeName => null;
  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  List imgs = [
    "assets/images/doc/Doctor1.jpg",
    "assets/images/doc/Doctor2.jpg",
    "assets/images/doc/Doctor3.jpg",
    "assets/images/doc/Doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const AppNameTextWidgt(),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.doctorLogo,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.15,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        AppConstans.bannersImages[index],
                        fit: BoxFit.fitHeight,
                      );
                    },
                    autoplay: true,
                    itemCount: AppConstans.bannersImages.length,
                    pagination: const SwiperPagination(
                        alignment: Alignment.bottomCenter,
                        builder: DotSwiperPaginationBuilder(
                          color: Colors.white,
                          activeColor: Colors.red,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Clinc Visit",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Make an appoinment",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.home,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Home Visit",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Make an appoinment",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: SubtitleTextWidget(
                  label: "What are your symptoms?",
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: symptoms.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          symptoms[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // const Padding(
              //   padding: EdgeInsets.only(
              //     left: 15,
              //   ),
              //   child: SubtitleTextWidget(label: "Popular Doctors"),
              // ),
              // GridView.builder(
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //   ),
              //   itemCount: 4,
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemBuilder: (context, index) {
              //     return InkWell(
              //       onTap: () {},
              //       child: Container(
              //         margin: const EdgeInsets.all(10),
              //         padding: const EdgeInsets.symmetric(vertical: 15),
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(10),
              //           boxShadow: const [
              //             BoxShadow(
              //               color: Colors.black12,
              //               blurRadius: 4,
              //               spreadRadius: 2,
              //             ),
              //           ],
              //         ),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             CircleAvatar(
              //               radius: 30,
              //               backgroundImage: AssetImage("assets/images/doc/${imgs[index]}"),
              //             ),
              //             const Text(
              //               "Dr: Mohamed Hamed",
              //               style: TextStyle(
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.w500,
              //                   color: Colors.black54),
              //             ),
              //             const Text(
              //               "Therapist",
              //               style: TextStyle(
              //                 color: Colors.black45,
              //               ),
              //             ),
              //             const Row(
              //               mainAxisSize: MainAxisSize.min,
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Icon(
              //                   Icons.star,
              //                   color: Colors.amber,
              //                 ),
              //                 SubtitleTextWidget(
              //                   label: "4.6",
              //                 ),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              // ),
              // SizedBox(
              //   height: size.height * 0.2,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: productProvider.getProduct.length,
              //       itemBuilder: (context, index) {
              //         return ChangeNotifierProvider.value(
              //             value: productProvider.getProduct[index],
              //             child: const LatestArrivalProductWidget());
              //       }),
              // ),
              // const SizedBox(
              //   height: 22,
              // ),
              // const TitleTextWidget(
              //   lablel: "Categories",
              //   fontSize: 22,
              // ),
              // const SizedBox(
              //   height: 22,
              // ),
              // GridView.count(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   crossAxisCount: 2,
              //   // children:
              //   //     List.generate(AppConstans.categoriesList.length, (index) {
              //   //   return CategoryRoundedWidget(
              //   //       image: AppConstans.categoriesList[index].image,
              //   //       name: AppConstans.categoriesList[index].name);
              //   // })
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
