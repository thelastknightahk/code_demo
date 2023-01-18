import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/global/presentation/pages/item_detail_page.dart';
import 'package:easiest_shop/global/presentation/widgets/circle_image_widget.dart';
import 'package:easiest_shop/global/presentation/widgets/text_style_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
class PopularListWidget extends StatelessWidget {
  const PopularListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 6.0, vertical: 10.0),
                child: InkWell(
                  onTap: (){
                    Get.to(ItemDetailPage(itemCode: '$index',));
                  },
                  child: Column(
                    children: [
                      circleImageWidget(
                          context,
                          'https://img.freepik.com/free-vector/super-sale-flat-composition-with-percent-discounts-people-running-with-shopping-bags_1284-64745.jpg?size=626&ext=jpg&ga=GA1.1.1655481621.1673968904',
                          80,
                          80,
                          10),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: TextStyleWidget(
                          content: 'Item $index',
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          textColor: AppColor.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
  }
}