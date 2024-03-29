import 'package:doc_on_call/consts/navBar.dart';
import 'package:doc_on_call/providers/theme_provider.dart';
import 'package:doc_on_call/screens/search_screen.dart';
import 'package:doc_on_call/widgets/subtitle_text.dart';
import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import '../widgets/app_name_text.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const routName = '/HomeScreen';
  HomeScreen({
    super.key,
  });
  // String? get routeName => null;
  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  List names = [
    "Esraa AbdelMonem",
    "Mohamed Ebid",
    "Ashraf Mahrous",
    "Soliman Mohamed",
  ];

  List rates = [
    "4.9",
    "4.6",
    "4.8",
    "4.7",
  ];

  List images = [
    "assets/images/doc/doctor1.jpg",
    "assets/images/doc/doctor4.jpg",
    "assets/images/doc/doctor6.jpg",
    "assets/images/doc/doctor5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const AppNameTextWidgt(),
        //centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     IconlyLight.chat,
        //   ),
        // ),
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Image.asset(
        //     AssetsManager.doctorLogo,
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubtitleTextWidget(
                    label: "Book Appointment",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconlyLight.chat,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SearchScreen.routeName,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 56, 201),
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
                              size: 25,
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
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SearchScreen.routeName,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 56, 201),
                        borderRadius: BorderRadius.circular(8),
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
                              size: 25,
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
                padding: EdgeInsets.only(left: 5),
                child: TitleTextWidget(
                  lablel: "What are your symptoms",
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 55,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: symptoms.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: themeProvider.getIsDarkTheme
                            ? Colors.black
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 114, 56, 201),
                        ),
                        // boxShadow: const [
                        //   BoxShadow(
                        //     color: Colors.black12,
                        //     blurRadius: 4,
                        //     spreadRadius: 2,
                        //   ),
                        // ],
                      ),
                      child: Center(
                        child: Text(
                          symptoms[index],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: themeProvider.getIsDarkTheme
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     const Padding(
              //       padding: EdgeInsets.only(left: 5),
              //       child: TitleTextWidget(
              //         lablel: "Popular specializations",
              //         fontSize: 20,
              //       ),
              //     ),
              //     TextButton(
              //       onPressed: () {
              //         Navigator.pushNamed(
              //             context, SpecializationsScreen.routName);
              //       },
              //       child: const SubtitleTextWidget(
              //         label: "See all",
              //         textDecoration: TextDecoration.underline,
              //         fontStyle: FontStyle.italic,
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 15,
              ),
              // GridView.count(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   crossAxisCount: 4,
              //   children: List.generate(
              //     AppConstans.categoriesList.length,
              //     (index) {
              //       return CategoryRoundedWidget(
              //         image: AppConstans.categoriesList[index].image,
              //         name: AppConstans.categoriesList[index].name,
              //       );
              //     },
              //   ),
              // ),
              const Row(
                children: [
                  TitleTextWidget(lablel: "Popular Doctors"),
                ],
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: themeProvider.getIsDarkTheme
                            ? const Color.fromARGB(255, 9, 3, 27)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 114, 56, 201),
                        ),
                        // boxShadow: const [
                        //   BoxShadow(
                        //     color: Colors.purple,
                        //     blurRadius: 4,
                        //     spreadRadius: 2,
                        //   ),
                        // ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("${images[index]}"),
                          ),
                          Text(
                            "${names[index]}",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: themeProvider.getIsDarkTheme
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          Text(
                            "Therapist",
                            style: TextStyle(
                              fontSize: 10,
                              color: themeProvider.getIsDarkTheme
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${rates[index]}",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: themeProvider.getIsDarkTheme
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
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
              const SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
