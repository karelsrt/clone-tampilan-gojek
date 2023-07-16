import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../controller/home_controller.dart';
import 'package:clone_gojek/core.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;
        int index = -1;
        Widget indikator(index) {
          return Container(
            height: controller.currentIndex == index ? 25 : 6,
            width: 5,
            margin: const EdgeInsets.only(
              top: 5,
            ),
            decoration: BoxDecoration(
              color: controller.currentIndex == index
                  ? Colors.white
                  : Colors.white.withOpacity(0.5),
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          );
        }

        Widget gopay() {
          return Container(
            margin: const EdgeInsets.only(
              top: 5,
              bottom: 1,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 7,
                        child: Icon(
                          Icons.money,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Gopay",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Rp12.379",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Klik & Cek Riwayat",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        Widget gopay2() {
          return Container(
            margin: const EdgeInsets.only(
              top: 5,
              bottom: 1,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          );
        }

        List card = [
          gopay(),
          gopay2(),
        ];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 44.0,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          30,
                        ),
                      ),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffE8E8E8),
                      ),
                    ),
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                        decoration: InputDecoration(
                          hintText: "Cari Layanan, Makanan, & Tujuan",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[600],
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff0281A0),
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: card.map(
                      (e) {
                        index += 1;
                        return indikator(index);
                      },
                    ).toList(),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CarouselSlider(
                    items: card
                        .map<Widget>((card) => Container(
                              child: card,
                            ))
                        .toList(),
                    options: CarouselOptions(
                      scrollDirection: Axis.vertical,
                      enableInfiniteScroll: false,
                      initialPage: 0,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        controller.currentIndex = index;
                        controller.update();
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 18.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_upward_outlined,
                              size: 24.0,
                              color: Color(0xff0281A0),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Bayar",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 24.0,
                              color: Color(0xff0281A0),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Top UP",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.rocket_launch,
                              size: 24.0,
                              color: Color(0xff0281A0),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Explor",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.0,
                crossAxisCount: 4,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemCount: controller.menu.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var items = controller.menu[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: items['colour'],
                      radius: 30.0,
                      child: ImageIcon(
                        AssetImage(
                          items['icon'],
                        ),
                        size: 24.0,
                        color: items['warna2'] ?? Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      items['name'],
                      style: const TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffEAF3F6),
                    Color(0xffFFFFFF),
                  ],
                ),
                border: Border.fromBorderSide(
                  BorderSide(
                    width: 1.5,
                    color: Color(0xffE8E8E8),
                  ),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/gambar/dot.png",
                    fit: BoxFit.fill,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/gambar/wong.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "117 XP lagi ada Harta Karun",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          LinearPercentIndicator(
                            width: 209,
                            padding: const EdgeInsets.only(left: 0),
                            lineHeight: 8.0,
                            percent: 0.70,
                            barRadius: const Radius.circular(10),
                            progressColor: const Color(0xff00880F),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Akes Cepat",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 110,
              decoration: const BoxDecoration(
                border: Border.fromBorderSide(BorderSide(
                  width: 2,
                  color: Color(0xffE8E8E8),
                )),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 17,
                        top: 15,
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xff00AA12),
                            radius: 15.0,
                            child: ImageIcon(
                              AssetImage(
                                "assets/icon/icon_motor.png",
                              ),
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Pintu masuk motor, MNC Land",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 19.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 17,
                        top: 5,
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xff00AA12),
                            radius: 15.0,
                            child: ImageIcon(
                              AssetImage(
                                "assets/icon/icon_motor.png",
                              ),
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Pintu masuk motor, MNC Land",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 19.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff00AED5),
                  radius: 12.0,
                  child: Icon(
                    Icons.favorite,
                    size: 12.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "GopayLater",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              "Lebih hemat pake GoPayLater",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              "Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            ...controller.news.map(
              (ok) => Container(
                margin: const EdgeInsets.only(
                  bottom: 5,
                ),
                height: 285,
                decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color(0xffE8E8E8),
                      width: 2,
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ok['gambar'],
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Makin Seru",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                ok['keterangan'],
                                style: const TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
