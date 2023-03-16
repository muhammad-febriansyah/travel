import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Icon(
          CupertinoIcons.bars,
          size: 25,
          color: Color(
            0xff5E6A81,
          ),
        ),
        title: Text(
          'Explore',
          style: TextStyle(
            color: Color(0xff5E6A81),
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 19,
              backgroundColor: Colors.grey[200],
              child: Icon(
                Icons.filter_alt,
                size: 23,
                color: Color(0xff5E6A81),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.search),
                    // suffixIcon: Icon(CupertinoIcons.rectangle_3_offgrid_fill),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Search your destination...",
                    hoverColor: Colors.transparent,
                    focusColor: Colors.black,
                    contentPadding: EdgeInsets.all(15),
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Container(
                  width: double.infinity,
                  height: Get.height * 0.04,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      _Badge("Sights"),
                      SizedBox(
                        width: 10,
                      ),
                      _Badge("Tour"),
                      SizedBox(
                        width: 10,
                      ),
                      _Badge("Adventure"),
                      SizedBox(
                        width: 10,
                      ),
                      _Badge("Staycation"),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Container(
                  width: double.infinity,
                  height: Get.height * 0.35,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      cardImage(
                          "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/original/events/2020/12/22/391ca0b3-f23b-4476-b18b-d19d63f5dcc7-1608634979013-8c313f9e66f333afb59469a021af1ec2.jpg",
                          "Mount Bromo",
                          "Indonesia"),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      cardImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/1200px-Colosseo_2020.jpg",
                          "Colosseum",
                          "Rome, Italy"),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      cardImage(
                          "https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/01/a0001561/img/basic/a0001561_main.jpg?20200817200737",
                          "Gundam Statue",
                          "Japan"),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        color: Color(0xff425884),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff425884),
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Container(
                  width: double.infinity,
                  height: Get.height * 0.5,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      cardList(
                          "https://akcdn.detik.net.id/visual/2020/11/30/kpc-pen_169.jpeg?w=650",
                          "Barabudhur temple",
                          "25 March - 29 March, 2023"),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      cardList(
                          "https://coresites-cdn-adm.imgix.net/mpora_new/wp-content/uploads/2015/10/Everest-Moon.jpg?fit=crop",
                          "Mount Everest",
                          "05 April - 12 April, 2023"),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      cardList(
                          "https://cdn1.parksmedia.wdprapps.disney.com/resize/mwImage/1/1600/900/75/dam/disneyland/attractions/disneyland/sleeping-beauty-castle-walkthrough/sleeping-beauty-castle-exterior-16x9.jpg?1593556896598",
                          "DisneyLand Park",
                          "09 April - 12 April, 2023"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container cardList(String img, String title, String date) {
    return Container(
      height: Get.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                img,
                fit: BoxFit.cover,
                width: Get.width * 0.25,
                height: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xff425884),
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Expanded(
                    child: Text(
                      date,
                      style: TextStyle(
                        color: Color(0xff425884),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
              color: Color(0xff425884),
            )
          ],
        ),
      ),
    );
  }

  Container cardImage(String imgUrl, String title, String place) {
    return Container(
      width: Get.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
                height: Get.height * 0.2,
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              title,
              style: TextStyle(
                color: Color(0xff425884),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  place,
                  style: TextStyle(
                    color: Color(0xff425884),
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                  width: Get.width * 0.12,
                  height: Get.height * 0.035,
                  decoration: BoxDecoration(
                    color: Color(0xff5E6A81),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.yellow,
                        ),
                        Text(
                          "4.6",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _Badge(String category) {
    return Container(
      width: Get.width * 0.25,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff425884),
            Colors.blueAccent,
          ],
        ),
        // color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          category,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
