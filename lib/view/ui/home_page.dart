// ignore_for_file: unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:uts_flutter/controller/favorite_provider.dart';
import 'package:uts_flutter/view/components/style.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:uts_flutter/model/model.dart';
import 'package:uts_flutter/view/ui/cart_page.dart';
import 'package:uts_flutter/view/ui/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);

  int selectedIndex = -1;

  List<bool> isLoveList = List.generate(productsList.length, (index) => false);

  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    // color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Iconsax.search_normal),
                                  hintText: 'Search',
                                  filled: true,
                                  fillColor: Color(0xFFF2F2F7),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Iconsax.notification,
                                    size: 30,
                                  ),
                                  SizedBox(width: 24),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CartPage()));
                                    },
                                    child: Icon(
                                      Iconsax.bag,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 24),
                        Container(
                          child: CarouselSlider(
                              options: CarouselOptions(
                                autoPlayInterval: Duration(seconds: 3),
                                enlargeCenterPage: true,
                                height: 170.0,
                                autoPlay: true,
                              ),
                              items: imgList.map((e) {
                                return Builder(builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    // decoration:
                                    //     BoxDecoration(color: Colors.blue),
                                    child: Image.asset(e),
                                  );
                                });
                              }).toList()),
                        ),
                        SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kategori',
                                style: primary(
                                    18, Color(0xFF292D32), FontWeight.w600),
                              ),
                              Text(
                                'Lihat \semua',
                                style: primary(
                                    14, Color(0xFF00B14F), FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: Color(0xFF00B14F),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            indicatorColor: Colors.transparent,
                            indicatorSize: TabBarIndicatorSize.label,
                            controller: _tabController,
                            isScrollable: true,
                            labelColor: Colors.white,
                            labelStyle:
                                primary(16, Colors.black, FontWeight.w400),
                            unselectedLabelColor: Colors.grey.withOpacity(0.7),
                            tabs: [
                              Tab(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 24),
                                  decoration: BoxDecoration(
                                      // border: Border.all(
                                      //     color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text('Semua')),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 24),
                                  decoration: BoxDecoration(
                                      // border: Border.all(
                                      //     color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text('Kemeja'),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 24),
                                  decoration: BoxDecoration(
                                      // border: Border.all(
                                      //     color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text('Sepatu'),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 24),
                                  decoration: BoxDecoration(
                                      // border: Border.all(
                                      //     color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text('Aksesoris'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 390),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Container(
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 17,
                            mainAxisSpacing: 20,
                            children: productsList.asMap().entries.map((entry) {
                              final list = entry.value;
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailPage(
                                                  list: list,
                                                )));
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(5, 8, 5, 8),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(list.imageAsset),
                                    ),
                                  ),
                                  child: Container(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        list.price,
                                        style: primary(13, Colors.grey.shade600,
                                            FontWeight.w500),
                                      ),
                                      Text(
                                        list.produk,
                                        style: primary(14, Colors.grey.shade500,
                                            FontWeight.w500),
                                      ),
                                    ],
                                  )),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Center(
                                child: Text('Hello world'),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Center(
                                child: Text('Hello world'),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Center(
                                child: Text('Hello world'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
