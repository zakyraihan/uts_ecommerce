class Products {
  String produk;
  String description;
  String price;
  String ulasan;
  List<String> ukuran;
  String imageAsset;
  List<String>? imageUrls;

  Products({
    required this.produk,
    required this.description,
    required this.price,
    required this.ulasan,
    required this.ukuran,
    required this.imageAsset,
    this.imageUrls,
  });
}

var productsList = [
  Products(
    produk: 'Batik Pria Lengan Panjang',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp199.900',
    ulasan: "4.8 (102) | 90 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/batik.png',
  ),
  Products(
    produk: 'New Balance 992 Grey Original',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp1.240.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/sepatu.png',
  ),
  Products(
    produk: 'Skinny Jeans Dark Blue Wanita',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp379.900',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/celanawanita.png',
  ),
  Products(
    produk: 'Kacamata Radiasi Blue Ray',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp125.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['s', 'm', 'l'],
    imageAsset: 'assets/image/glass.png',
  ),
  Products(
    produk: 'Kemeja Pria Polos Lengan Pendek Oxford',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp119.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/kemeja.png',
  ),
  Products(
    produk: 'Human Greatness Hoodie Hitam',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp229.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/hoodie.png',
  ),
  Products(
    produk: 'Batik Pria Lengan Panjang',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp199.900',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/batik.png',
  ),
  Products(
    produk: 'New Balance 992 Grey Original',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp1.240.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/sepatu.png',
  ),
  Products(
    produk: 'Skinny Jeans Dark Blue Wanita',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp379.900',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/celanawanita.png',
  ),
  Products(
    produk: 'Kacamata Radiasi Blue Ray',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp125.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['s', 'm', 'l'],
    imageAsset: 'assets/image/glass.png',
  ),
  Products(
    produk: 'Kemeja Pria Polos Lengan Pendek Oxford',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp119.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/kemeja.png',
  ),
  Products(
    produk: 'Human Greatness Hoodie Hitam',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp229.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/hoodie.png',
  ),
  Products(
    produk: 'Batik Pria Lengan Panjang',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp199.900',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/batik.png',
  ),
  Products(
    produk: 'New Balance 992 Grey Original',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp1.240.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/sepatu.png',
  ),
  Products(
    produk: 'Skinny Jeans Dark Blue Wanita',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp379.900',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/celanawanita.png',
  ),
  Products(
    produk: 'Kacamata Radiasi Blue Ray',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp125.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['s', 'm', 'l'],
    imageAsset: 'assets/image/glass.png',
  ),
  Products(
    produk: 'Kemeja Pria Polos Lengan Pendek Oxford',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp119.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/kemeja.png',
  ),
  Products(
    produk: 'Human Greatness Hoodie Hitam',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp229.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/hoodie.png',
  ),
  Products(
    produk: 'Batik Pria Lengan Panjang',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp199.900',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/batik.png',
  ),
  Products(
    produk: 'New Balance 992 Grey Original',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp1.240.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/sepatu.png',
  ),
  Products(
    produk: 'Skinny Jeans Dark Blue Wanita',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp379.900',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '45'],
    imageAsset: 'assets/image/celanawanita.png',
  ),
  Products(
    produk: 'Kacamata Radiasi Blue Ray',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp125.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['s', 'm', 'l'],
    imageAsset: 'assets/image/glass.png',
  ),
  Products(
    produk: 'Kemeja Pria Polos Lengan Pendek Oxford',
    description:
        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
    price: 'Rp119.000',
    ulasan: "4.8 (102) | 67 ulasan",
    ukuran: ['39', '40', '42', '44'],
    imageAsset: 'assets/image/kemeja.png',
  ),
];

final List<String> imgList = [
  'assets/image/Banner.png',
  'assets/image/Banner.png',
  'assets/image/Banner.png',
  'assets/image/Banner.png',
  'assets/image/Banner.png',
];

List<String> ukuran = ['39', '40', '42', '44'];


