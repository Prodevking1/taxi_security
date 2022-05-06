import 'package:flutter/material.dart';

import '../../constants/all.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
    this.title,
    this.icon,
  }) : super(key: key);

  final String? title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: AppColors.grey),
        ),
      ),
      child: ListTile(
        title: Text(
          title ?? '',
          style: AppTextStyle.heading2.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.greyText,
            fontSize: 17.0,
          ),
        ),
        trailing: IconButton(onPressed: () {}, icon: icon!),
      ),
    );
  }
}
