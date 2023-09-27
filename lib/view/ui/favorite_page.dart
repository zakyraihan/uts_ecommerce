// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:uts_flutter/controller/favorite_provider.dart';
import 'package:uts_flutter/view/components/style.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Favorite',
          style: primary(18, Colors.black, FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Consumer<FavoriteProvider>(
          builder: (context, favoriteProvider, child) {
        return ListView.builder(
            itemCount: favoriteProvider.favoriteItems.length,
            itemBuilder: (context, index) {
              final product = favoriteProvider.favoriteItems[index];
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            product.imageAsset,
                            height: 80,
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.produk,
                                style: TextStyle(),
                              ),
                              Text(product.price),
                            ],
                          ),
                        ],
                      ),
                      Icon(Iconsax.bag)
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }
}
