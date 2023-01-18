import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/global/presentation/widgets/text_style_widget.dart';
import 'package:flutter/material.dart';

Widget profileBarWidgetItem(
    BuildContext context, String content, IconData icon) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextStyleWidget(
            content: content,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            textColor: AppColor.primaryColor,
          ),
          Icon(
            icon,
            color: AppColor.primaryColor,
          )
        ],
      ),
      const SizedBox(
        height: 8.0,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 1,
        color: AppColor.blackColor54,
      )
    ],
  );
}
