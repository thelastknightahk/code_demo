import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/global/presentation/pages/category_item_page.dart';
import 'package:easiest_shop/global/presentation/pages/item_detail_page.dart';
import 'package:easiest_shop/global/presentation/widgets/circle_image_widget.dart';
import 'package:easiest_shop/global/presentation/widgets/text_style_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ItemPage extends StatelessWidget {
 
  String? itemType;
  ItemPage({
    Key? key,
    this.itemType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: 9,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextStyleWidget(
                          content: 'CategoryItem $index',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textColor: AppColor.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                             Get.to(ItemDetailPage(itemCode: '$index',));
                            },
                            child: Column(
                              children: [
                                circleImageWidget(
                                    context,
                                    'https://img.freepik.com/free-vector/purchasing-habits-abstract-concept-vector-illustration-generate-consumer-habit-marketing-research-millennial-purchasing-preference-shopping-habitual-buying-behavior-abstract-metaphor_335657-2881.jpg?size=338&ext=jpg&ga=GA1.1.1655481621.1673968904',
                                    100,
                                    80,
                                    10),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Expanded(
                                  child: TextStyleWidget(
                                    content: 'Category $index',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    textColor: AppColor.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ],
              );
            })),
      ),
    );
  }
}
