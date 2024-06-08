import 'package:flutter/material.dart';

class lhoregrid extends StatelessWidget {
  const lhoregrid({
    super.key,

    required this.name,
    required this.image,

  });

  final String? name;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image!))
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 4),
              child: Text(name!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),))
        ],
      ),
    );
  }
}