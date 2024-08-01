import 'package:flutter/material.dart';
import '../../../../core/style/app_colors.dart';

class BannerScrollWidget extends StatelessWidget {
  final PageController controller;

  const BannerScrollWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final ItemModel oneItem = items[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            width:100,
            height: 200,
            decoration: BoxDecoration(
              color: AppColors.orangeRang,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(oneItem.image),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(8),
            child: Text(
              oneItem.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}

class ItemModel {
  final String image;
  final String text;

  ItemModel(this.image, this.text);
}

List<ItemModel> items = [
  ItemModel("assets/images/Tesla.png", "Tesla"),
  ItemModel("assets/images/bmw.png", "BMW"),
  ItemModel("assets/images/mercades.png", "Mers"),
  ItemModel("assets/images/rolls_royce.png", "Rolls Royce"),
];

