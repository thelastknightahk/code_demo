import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/global/presentation/widgets/circle_image_widget.dart';
import 'package:easiest_shop/global/presentation/widgets/text_style_widget.dart';
import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  String? itemCode;
    ItemDetailPage({
    Key? key,
    this.itemCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
                circleImageWidget(
                            context,
                            'https://img.freepik.com/free-vector/purchasing-habits-abstract-concept-vector-illustration-generate-consumer-habit-marketing-research-millennial-purchasing-preference-shopping-habitual-buying-behavior-abstract-metaphor_335657-2881.jpg?size=338&ext=jpg&ga=GA1.1.1655481621.1673968904',
                            100,
                            80,
                            10),
                            const SizedBox(height: 30,),
                              Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                               child: TextStyleWidget(
                        content: 'Item Name Hello',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: AppColor.primaryColor,
                      ),
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                               child: TextStyleWidget(
                        content: 'Item Code  : $itemCode',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        textColor: AppColor.primaryColor,
                      ),
                             ),

                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                          child: TextStyleWidget(
                          content: 'Quantity  : 10',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          textColor: AppColor.primaryColor,
                      ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                          child: TextStyleWidget(
                          content: 'Description  :   Test',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          textColor: AppColor.primaryColor,
                      ),
                        ),
            ],
          ),
        ),
      ),);
  }
}
