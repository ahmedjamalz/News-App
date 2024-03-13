import 'package:flutter/material.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage('assets/general.avif')),
        SizedBox(
          height: 12,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          'Al Nassr Football Club, simply known as Al Nassr is a professional multi-sports club based in Riyadh, Saudi Arabia. Their football team competes in the Saudi Professional League. In Arabic, Al Nassr means the victory.,hj',
          style: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        Text(
          'Al Nassr Football Club, simply known as Al Nassr is a  In Arabic, Al Nassr means the victory.',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
