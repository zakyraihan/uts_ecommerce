// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double hargaSepatu = 850.0;
  int index_sepatu = 1;

  double hargaKacamata = 450.0;
  int index_Kacamata = 1;

  double hargaJaket = 160.0;
  int index_jaket = 1;

  double ongkir = 14.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Iconsax.arrow_left,
              color: Colors.black,
              size: 26,
            )),
        title: Center(
          child: Text(
            'Keranjang',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 24, bottom: 16),
            child: Icon(
              Iconsax.more,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Iconsax.location),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Dikirim ke',
                                style: TextStyle(color: Colors.grey[500]),
                              )
                            ],
                          ),
                          Text('Ubah',
                              style: TextStyle(color: Color(0xff00B14F)))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text(
                          'Jakarta, Cibubur,\n Kota Wisata Madrid No 23',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                _Sepatu(),
                SizedBox(
                  height: 24,
                ),
                _Kacamata(),
                SizedBox(
                  height: 24,
                ),
                _Jaket(),
                SizedBox(
                  height: 90,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 16),
                        ),
                        Text(
                          '${hargaJaket + hargaSepatu + hargaKacamata}0',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ongkir',
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 16),
                        ),
                        Text(
                          '${ongkir}00',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Divider(
                        height: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 16),
                        ),
                        Text(
                          '${hargaJaket + hargaSepatu + hargaKacamata + ongkir}00',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(top: 24, bottom: 17, left: 24, right: 24),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff00B14F), borderRadius: BorderRadius.circular(8)),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Tambah Keranjang',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
        ),
      ),
    );
  }

  Row _Sepatu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/image/sepatu.png',
          width: 100,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Balance...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Text('40'),
            SizedBox(
              height: 16,
            ),
            Text('Rp ${hargaSepatu}00')
          ],
        ),
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (index_sepatu > 1) {
                      setState(() {
                        hargaSepatu /= 2;
                        index_sepatu -= 1;
                      });
                    }
                  },
                  icon: Icon(
                    Iconsax.minus,
                    size: 20,
                  )),
              Text(
                '${index_sepatu}',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      hargaSepatu *= 2;
                      index_sepatu += 1;
                    });
                  },
                  icon: Icon(
                    Iconsax.add,
                    color: Color(0xFF00B14F),
                    size: 20,
                  )),
            ],
          ),
        )
      ],
    );
  }

  Row _Kacamata() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/image/glass.png',
          width: 100,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kacamata Baca...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Text('-2, Hitam'),
            SizedBox(
              height: 16,
            ),
            Text('Rp ${hargaKacamata}00')
          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    if (index_Kacamata > 1) {
                      setState(() {
                        hargaJaket /= 2;
                        index_Kacamata -= 1;
                      });
                    }
                  },
                  icon: Icon(
                    Iconsax.minus,
                    size: 20,
                  )),
              Text(
                '${index_Kacamata}',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      hargaKacamata *= 2;
                      index_Kacamata += 1;
                    });
                  },
                  icon: Icon(
                    Iconsax.add,
                    color: Color(0xFF00B14F),
                    size: 20,
                  )),
            ],
          ),
        )
      ],
    );
  }

  Row _Jaket() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/image/hoodie.png',
          width: 100,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Human Greatnes...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Text('XL, Hitam'),
            SizedBox(
              height: 16,
            ),
            Text('Rp ${hargaJaket}00')
          ],
        ),
        Container(
          decoration: BoxDecoration(),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (index_jaket > 1) {
                      setState(() {
                        hargaJaket /= 2;
                        index_jaket -= 1;
                      });
                    }
                  },
                  icon: Icon(
                    Iconsax.minus,
                    size: 20,
                  )),
              Text(
                '${index_jaket}',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      hargaJaket *= 2;
                      index_jaket += 1;
                    });
                  },
                  icon: Icon(
                    Iconsax.add,
                    color: Color(0xFF00B14F),
                    size: 20,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
