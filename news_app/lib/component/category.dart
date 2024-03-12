import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 190,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/business.avif'), fit: BoxFit.fill),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
        'Business',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      )),
    );
  }
}
