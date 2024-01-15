import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ProductView extends StatelessWidget {
  final String imagePath, title, price;
  final bool? isFav;
  final Function()? onPressed;
  const ProductView(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.price,
      this.isFav = false,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220,
          width: 190,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.tertiaryColor,
              image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.cover)),
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  isFav!
                      ? Icons.favorite_rounded
                      : Icons.favorite_outline_rounded,
                  size: 25,
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text.rich(
          TextSpan(
              text: "$title\n",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              children: [
                TextSpan(
                  text: "\$$price",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ]),
        )
      ],
    );
  }
}
