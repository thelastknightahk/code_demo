import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/global/presentation/pages/item_detail_page.dart';
import 'package:easiest_shop/global/presentation/widgets/circle_image_widget.dart';
import 'package:easiest_shop/global/presentation/widgets/text_style_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CategoryItemPage extends StatelessWidget {
  
  String? categoryItemId;
    CategoryItemPage({
    Key? key,
    this.categoryItemId,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    dynamic fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:    SafeArea(
        child: SizedBox(
          height: fullHeight,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 16,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
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
                    SizedBox(
                      height: 5.0,
                    ),
                    Expanded(
                      child: TextStyleWidget(
                        content: 'Category $categoryItemId $index',
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        textColor: AppColor.primaryColor,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      )
    );
  }
}
