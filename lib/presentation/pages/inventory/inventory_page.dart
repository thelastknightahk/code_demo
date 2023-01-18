import 'package:easiest_shop/global/colors/colors.dart'; 
import 'package:easiest_shop/global/presentation/pages/item_page.dart'; 
import 'package:easiest_shop/global/presentation/widgets/text_style_widget.dart';
import 'package:easiest_shop/presentation/widget/category_list_widget.dart';
import 'package:easiest_shop/presentation/widget/popular_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key});

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextStyleWidget(
                content: 'Popular',
                fontSize: 16,
                fontWeight: FontWeight.w800,
                textColor: AppColor.primaryColor,
              ),
              InkWell(
                 onTap: (){
              
                  Get.to(ItemPage(itemType: 'Popular',));
                },
                child: const Icon(
                  Icons.auto_graph_sharp,
                  color: AppColor.primaryColor,
                ),
              )
            ],
          ),
        ),
       const PopularListWidget(),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextStyleWidget(
                content: 'Category',
                fontSize: 16,
                fontWeight: FontWeight.w800,
                textColor: AppColor.primaryColor,
              ),
              InkWell(
                onTap: (){
              
                  Get.to(ItemPage(itemType: 'Category',));
                },
                child: const Icon(
                  Icons.analytics_outlined,
                  color: AppColor.primaryColor,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Expanded(
          child: CategoryListWidget()
        )
      ],
    );
  }
}
