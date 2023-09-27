// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:uts_flutter/model/model.dart';
import 'package:uts_flutter/view/components/style.dart';
import 'package:uts_flutter/view/ui/cart_page.dart';
import '../../controller/cart_provider.dart';
import '../../controller/favorite_provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.list}) : super(key: key);

  final Products list;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;
  int selectedIndex = 0;

  Widget ukuran(int index, String ukuran) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color:
                  selectedIndex == index ? Colors.green.shade100 : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: selectedIndex == index
                      ? Color(0xFF00B14F)
                      : Color(0xFF292D32B2)),
            ),
            child: Text(
              ukuran,
              style: primary(
                  18,
                  selectedIndex == index
                      ? Color(0xFF00B14F)
                      : Color(0xB2292D32),
                  FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Detail Produk',
          style: primary(17, Colors.black, FontWeight.normal),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;

                      final favoriteProvider =
                          Provider.of<FavoriteProvider>(context, listen: false);
                      favoriteProvider.addToFavorite(widget.list);
                    });
                  },
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                    size: 27,
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Icon(
                    Iconsax.bag,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 16, 14, 0),
                  child: Image.asset(
                    widget.list.imageAsset,
                    height: 350,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.list.produk,
                      style: TextStyle(),
                    ),
                    SizedBox(height: 11),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFC400),
                        ),
                        Text(
                          widget.list.ulasan,
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    SizedBox(height: 17),
                    Text(
                      widget.list.description,
                      style: primary(16, Color(0xB2292D32), FontWeight.w400),
                    ),
                    SizedBox(height: 17),
                    Text(
                      'Pilih Ukuran',
                      style: primary(18, Colors.black, FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      // child: ,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 16, 0, 0),
                child: Row(
                  children: [
                    ukuran(0, '28'),
                    SizedBox(width: 20),
                    ukuran(1, '40'),
                    SizedBox(width: 20),
                    ukuran(2, '41'),
                    SizedBox(width: 20),
                    ukuran(3, '42'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.list.price,
              style: primary(22, Color(0xFF292D32), FontWeight.w600),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF00B14F),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  final cartProvider =
                      Provider.of<CartProvider>(context, listen: false);
                  cartProvider.addToCart(widget.list);
                },
                child: Text(
                  "Tambahkan ke Keranjang",
                  style: primary(14, Colors.white, FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
