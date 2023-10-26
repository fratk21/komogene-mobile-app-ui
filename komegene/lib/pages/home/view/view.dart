import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:komegene/core/utils/colors.dart';
import 'package:komegene/pages/home/model/homeViewModel.dart';
import 'package:komegene/widgets/appbarmodel.dart';
import 'package:komegene/widgets/search.textfield.dart';

Widget imageView(String image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Card(
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    ),
  );
}

AppBar appbarhome() {
  return CustomAppBar(
    centerTitle: false,
    automaticallyImplyLeading: false,
    title: Text(
      "Komagene",
      style: TextStyle(fontSize: 30, color: AppColors.backgroundColor),
    ),
    actions: [IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell))],
    bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: searchtextfield(
          hinttext: 'Ürün arayın...',
        )),
  );
}

Widget categoryHome(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              "Kategoriler",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              category(
                function: () {},
                image: "assets/image/porsiyon.jpg",
                name: "Dürümler",
              ),
              SizedBox(
                width: 30,
              ),
              category(
                function: () {},
                image: "assets/image/porsiyon.jpg",
                name: "Porsiyon",
              ),
              SizedBox(
                width: 30,
              ),
              category(
                function: () {},
                image: "assets/image/porsiyon.jpg",
                name: "İçecekler",
              ),
              SizedBox(
                width: 30,
              ),
              category(
                function: () {},
                image: "assets/image/porsiyon.jpg",
                name: "Tatlılar",
              ),
              SizedBox(
                width: 30,
              ),
              category(
                function: () {},
                image: "assets/image/porsiyon.jpg",
                name: "Kampanyalar",
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class ListViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 15, // Liste eleman sayısı
      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.01),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            margin: EdgeInsets.all(8.0),

            // Her bir Container'ın rengi
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 80,
                    child: ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/image/porsiyon.jpg",
                          fit: BoxFit.cover,
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Porsiyon menü $index",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Marul,Domates,Maydanoz,\nLimon,Nar Ekşisi,Salça",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Text("$index TL"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.chevron_right),
                )
              ],
            ));
      },
    );
  }
}
