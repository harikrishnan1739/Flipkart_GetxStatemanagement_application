import 'package:flipcartgetxproject/cartpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:carousel_pro/carousel_pro.dart';
// ignore: unused_import
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isToggled = false.obs;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      // ignore: avoid_unnecessary_containers
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: ListView(
            children: [
              // ----------Flipkart-----Grocery-------start---
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      height: 35,
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xFF1976D2),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 45.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://www.freepnglogos.com/uploads/flipkart-logo-png/flipkart-inventory-management-system-zap-inventory-1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, top: 3.5),
                                  child: Container(
                                    child: const Text("Flipkart",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 35,
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xFFEEEEEE),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 45.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://www.freepnglogos.com/uploads/flipkart-logo-png/flipkart-inventory-management-system-zap-inventory-1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, top: 3.5),
                                  child: Container(
                                    child: const Text("Grocery",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ----------Flipkart-----Grocery-------End---
              const SizedBox(
                height: 10,
              ),
              //------------BrandMail-switch---Searchbar------start------
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: 65,
                      height: 39,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            child: const Text(
                              "Brand Mail",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                              child: Obx(
                            () => FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              activeColor: Colors.green,
                              value: isToggled.value,
                              onToggle: (value) {
                                if (isToggled.value == false) {
                                  isToggled.value = true;
                                } else if (isToggled.value == true) {
                                  isToggled.value = false;
                                }
                              },
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.9),
                    child: Container(
                      width: 310,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(3)),
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search for products',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //------------BrandMail-switch---Searchbar------End------
              const SizedBox(
                height: 10,
              ),
              //============================================START================================================
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.white,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://indianhotdeal.com/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-12-at-10.36.38-PM-1024x576.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'SuperCoin',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 70,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://media.alpha-solutions.com/us/-/media/alphawebsite2019/insight/coupon.ashx?h=600&iar=0&w=900&hash=7C4548BBE585FCFBCDA375F23085FD7D"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Coupons',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://www.transparentpng.com/thumb/credit-card/8p4jX1-blank-credit-card-pic.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Credits',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://e7.pngegg.com/pngimages/193/15/png-clipart-computer-icons-users-group-icon-design-joining-miscellaneous-orange.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Group Buy',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://upload.wikimedia.org/wikipedia/commons/5/52/JioTV_logo.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'LiveShop+',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://w7.pngwing.com/pngs/516/47/png-transparent-m3u-iptv-television-internet-protocol-android-television-blue-electric-blue.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Deal TV',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2021/02/05/07/11/hand-mike-5983612_1280.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "What's new?",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/736x/7f/7f/ee/7f7fee82c263ca7538e810db7f0c00c5.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Fire Drops",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNhx_Qi4sFH0ecVBm6Kkb0l36n5_E2KAVrbmidPdxwP9PZpYk42ijR70-7pxK8eOV5R6M&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Seller Hub",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://www.freepnglogos.com/uploads/games-png/play-games-icon-android-lollipop-iconset-dtafalonso-0.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Games",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.indianexpress.com/2020/10/Flipkart-Plus.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Plus",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //============================================END================================================
//-------------------------------------------------------------------------------------------------------------------
              //--------------------------------START--------------------------------------------------
              Column(
                children: [
                  SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: Carousel(
                      dotSize: 4.0,
                      autoplay: true,
                      autoplayDuration: const Duration(seconds: 3),
                      dotSpacing: 15.0,
                      dotColor: Colors.white,
                      dotBgColor: Colors.transparent,
                      images: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkYjSW6Bxx9ZzRvwVWdzlZXPjaM7qP6uv_Yqm-UsEB13v7l7KEHZZQAgwgJKM5T1LABFs&usqp=CAU",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                            "https://www.shopickr.com/wp-content/uploads/2015/07/flipkart-fashion-sale-july-7-31-2015.jpg",
                            fit: BoxFit.cover),
                        Image.network(
                            "https://cdn.zeebiz.com/sites/default/files/2017/07/24/22051-flipkart.jpg",
                            fit: BoxFit.cover),
                        Image.network(
                            "https://i.gadgets360cdn.com/large/big-saving-days-september2020_1600411575625.jpg",
                            fit: BoxFit.cover),
                        Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-OP3kfcwoQesjFspjFaBgSWG8Rd9eol4gAg&usqp=CAU",
                            fit: BoxFit.cover),
                        Image.network(
                            "https://img.paisawapas.com/ovz3vew9pw/2017/06/10131014/FLIPKART_10JUN17_BANNER.jpg",
                            fit: BoxFit.cover),
                        Image.network(
                            "https://st1.bgr.in/wp-content/uploads/2022/05/Flipkart-Amazon-Sale.jpg",
                            fit: BoxFit.cover),
                        Image.network(
                            "https://pbs.twimg.com/media/DpEWJDRWkAA01Jd.jpg",
                            fit: BoxFit.cover),
                        Image.network(
                            "https://i.ytimg.com/vi/s1RSOfoeJm4/maxresdefault.jpg",
                            fit: BoxFit.cover),
                      ],
                    ),
                  ),
                ],
              ),
              //--------------------------------END--------------------------------------------------
              //====================================START================================================
              Container(
                width: double.infinity,
                height: 150,
                color: const Color(0xFFEF5350),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 110,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFEEEEEE),
                      ),
                      //----------------subBox------START---------
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://www.flashsaletricks.com/wp-content/uploads/2018/02/The_Flipheart_Day.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: const Text("Sale is Live!"),
                                    ),
                                    Container(
                                      child: const Text(
                                        "Shop Now",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                          //----------------subBox----END-----------
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFEEEEEE),
                      ),
                      //----------------subBox------START---------
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://m.media-amazon.com/images/I/613qFCwaEnL._SL1500_.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: const Text("BTCalling"),
                                    ),
                                    Container(
                                      child: const Text(
                                        "₹̶5̶9̶9̶9̶ ₹1,799",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                          //----------------subBox----END-----------
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFEEEEEE),
                      ),
                      //----------------subBox------START---------
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://www.presse-citron.net/app/uploads/2019/10/apple-airpods-pro-1.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: const Text("AirPode pro"),
                                    ),
                                    Container(
                                      child: const Text(
                                        "Shop at 12PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                          //----------------subBox----END-----------
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 30,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.only(top: 2.0, left: 5),
                  child: Text(
                    "Recently Viewed Stores",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              ////=====================================START=====================================================
              Container(
                width: double.infinity,
                height: 200,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Container(
                                width: 120,
                                height: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(4, 4),
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: Offset(-2, -2),
                                    ),
                                  ],
                                ),
                                //----------------subBox------START---------
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        width: 100,
                                        height: 115,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://images.meesho.com/images/products/185390523/ucfrl_512.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 100,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: const Text(
                                                  "Men's T-shirt",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    //----------------subBox----END-----------
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Container(
                                  width: 120,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4, 4),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(-2, -2),
                                      ),
                                    ],
                                  ),
                                  //----------------subBox------START---------
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          width: 100,
                                          height: 115,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://m.media-amazon.com/images/I/61AtWVLF2CL.jpg"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Container(
                                          width: 100,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    "Biographies and Autobiiographies",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //----------------subBox----END-----------
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Container(
                                  width: 120,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4, 4),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(-2, -2),
                                      ),
                                    ],
                                  ),
                                  //----------------subBox------START---------
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          width: 100,
                                          height: 115,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://m.media-amazon.com/images/I/61y04z8SKEL._SX349_BO1,204,203,200_.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Container(
                                          width: 100,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    "Books",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //----------------subBox----END-----------
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Container(
                                  width: 120,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4, 4),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(-2, -2),
                                      ),
                                    ],
                                  ),
                                  //----------------subBox------START---------
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          width: 100,
                                          height: 115,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiCqkpOrSvUGNtIftb7ZacZEPQrCtZhCkUpkwfYa1BqqxD60X2Vys9Jzg0OWbqH7rVLxQ&usqp=CAU"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Container(
                                          width: 100,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    "Other children Books",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //----------------subBox----END-----------
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Container(
                                  width: 120,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4, 4),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(-2, -2),
                                      ),
                                    ],
                                  ),
                                  //----------------subBox------START---------
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          width: 100,
                                          height: 115,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://rukminim1.flixcart.com/image/416/416/kjd6nww0-0/regionalbooks/d/e/h/think-grow-rich-with-napoleon-hill-set-of-3-books-pb-think-and-original-imafyy82ezh9zrtg.jpeg?q=70"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Container(
                                          width: 100,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    "Other Books",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //----------------subBox----END-----------
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Container(
                                  width: 120,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4, 4),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(-2, -2),
                                      ),
                                    ],
                                  ),
                                  //----------------subBox------START---------
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          width: 100,
                                          height: 115,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.shopify.com/s/files/1/0416/8328/8220/products/Screenshot_20210829-165254_1024x1024@2x.jpg?v=1630252307"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Container(
                                          width: 100,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    "Sports & Action",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //----------------subBox----END-----------
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Container(
                                  width: 120,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4, 4),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(-2, -2),
                                      ),
                                    ],
                                  ),
                                  //----------------subBox------START---------
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          width: 100,
                                          height: 115,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://lightpoint.in/wp-content/uploads/2022/11/Havells-Instanio-Instant-Water-Heater-3-litre-491281703-i-1-1200Wx1200H.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Container(
                                          width: 100,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    "Water heater",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //----------------subBox----END-----------
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Container(
                                  width: 120,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4, 4),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(-2, -2),
                                      ),
                                    ],
                                  ),
                                  //----------------subBox------START---------
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          width: 100,
                                          height: 115,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.anscommerce.com/image/tr:e-sharpen-01,h-550,w-415,cm-pad_resize/data/khadims/18-july-2022/25931325961_1.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Container(
                                          width: 100,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    "Cuesual shoes",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //----------------subBox----END-----------
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 221, 216, 216),
                child: Row(
                  children: [
                    Container(
                      width: 320,
                      height: 60,
                      color: const Color.fromARGB(255, 221, 216, 216),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 24.0, left: 30),
                        child: Text(
                          'itmes Bask in Stock',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: ActionChip(
                        backgroundColor: Colors.blue,
                        onPressed: () {},
                        padding: const EdgeInsets.symmetric(
                            vertical: 9, horizontal: 5),
                        label: const Text(
                          "view all ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "http://traemingus.weebly.com/uploads/2/4/1/7/24177718/7382599_orig.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://i.ytimg.com/vi/03HmE26odNQ/maxresdefault.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://newspaperads.ads2publish.com/wp-content/uploads/2019/05/apple-iphone-xr-brilliant-in-every-shade-ad-times-of-india-bangalore-05-04-2019.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
