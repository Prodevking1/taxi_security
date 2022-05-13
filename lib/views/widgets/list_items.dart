import 'package:flutter/material.dart';
import '../../constants/all.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key, this.title, this.icon, this.onPress})
      : super(key: key);

  final String? title;
  final Icon? icon;
  final Function()? onPress;

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: AppColors.grey),
            ),
          ),
          child: ListTile(
            title: Text(
              widget.title ?? '',
              style: AppTextStyle.heading2.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.greyText,
                fontSize: 17.0,
              ),
            ),
            trailing: IconButton(
              onPressed: widget.onPress,
              icon: widget.icon!,
            ),
          ),
        ),
      ],
    );
  }
}
