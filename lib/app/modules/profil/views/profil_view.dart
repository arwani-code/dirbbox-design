import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff22215B),
              ),
              onTap: () {
                // Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'My Profile',
            style: TextStyle(
                color: Color(0xff22215B), fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GestureDetector(
                child: Icon(
                  Icons.more_horiz_outlined,
                  color: Color.fromARGB(255, 76, 33, 91),
                ),
                onTap: () {
                  // Navigator.pop(context);
                },
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.all(30),
              height: 275,
              child: Stack(
                children: [
                  Center(
                      child: Column(
                    children: [
                      SvgPicture.asset("assets/images/profil-svg.svg"),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Ahmad Arwani",
                        style: TextStyle(
                            color: Color(0xFF22215B),
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Mobile Developer",
                        style: TextStyle(
                            color: Color(0xFF22215B),
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(
                            color: Color(0xFF22215B).withOpacity(0.6)),
                      ),
                      Text(
                        "adipiscing elit. Ornare pretium placerat ut",
                        style: TextStyle(
                            color: Color(0xFF22215B).withOpacity(0.6)),
                      ),
                      Text(
                        "platea.",
                        style: TextStyle(
                            color: Color(0xFF22215B).withOpacity(0.6)),
                      )
                    ],
                  )),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xFFFF317B),
                      ),
                      child: Center(
                        child: Text(
                          "PRO",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Folder",
                    style: TextStyle(
                        color: Color(0xFF22215B),
                        fontWeight: FontWeight.w900,
                        fontSize: 15.0),
                  ),
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/images/add-svg.svg"),
                        SvgPicture.asset("assets/images/settings-svg.svg"),
                        SvgPicture.asset("assets/images/vector-svg.svg")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardFolder(
                    title: "Mobile Apps",
                    imageFolder:
                        SvgPicture.asset("assets/images/folder-svg.svg"),
                    background: Color(0xFFEEF7FE),
                    date: "December 20.2020",
                    option: Icon(
                      Icons.more_vert_outlined,
                      color: Color(0xFF22215B),
                    ),
                    color: Color(0xFF22215B),
                  ),
                  CardFolder(
                    title: "SVG Icons",
                    imageFolder:
                        SvgPicture.asset("assets/images/folder-2-svg.svg"),
                    background: Color(0xFFFFFBEC),
                    date: "December 20.2020",
                    option: Icon(
                      Icons.more_vert_outlined,
                      color: Color(0xFFFFB110),
                    ),
                    color: Color(0xFFFFB110),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardFolder(
                    title: "Prototypes",
                    imageFolder:
                        SvgPicture.asset("assets/images/folder-3-svg.svg"),
                    background: Color(0xFFFEEEEE),
                    date: "December 20.2020",
                    option: Icon(
                      Icons.more_vert_outlined,
                      color: Color(0xFFAC4040),
                    ),
                    color: Color(0xFFAC4040),
                  ),
                  CardFolder(
                    title: "Avatars",
                    imageFolder:
                        SvgPicture.asset("assets/images/folder-4-svg.svg"),
                    background: Color(0xFFF0FFFF),
                    date: "Novemaber 10.2020",
                    option: Icon(
                      Icons.more_vert_outlined,
                      color: Color(0xFF23B0B0),
                    ),
                    color: Color(0xFF23B0B0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Uploads",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff22215B)),
                  ),
                  SvgPicture.asset("assets/images/sort-svg.svg")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/word-svg.svg"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          "Projects.docx",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF22215B),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Novemaber 22.2020",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFF22215B)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("300kb"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder(
      {Key? key,
      required this.title,
      required this.imageFolder,
      required this.background,
      required this.date,
      required this.option,
      required this.color})
      : super(key: key);

  final SvgPicture imageFolder;
  final String title;
  final String date;
  final Color background;
  final Icon option;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: background),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 130),
            child: option,
          ),
          Container(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 15.0, color: color),
                        ),
                        Text(
                          date,
                          style: TextStyle(fontSize: 10.0, color: color),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: imageFolder,
          )
        ],
      ),
    );
  }
}
