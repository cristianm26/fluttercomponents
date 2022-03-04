import 'package:componentsapp/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';
import 'package:componentsapp/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget ')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCarType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(),
          SizedBox(
            height: 10,
          ),
          CustomCardType3(
            imageUrl:
                'https://www.lukas-petereit.com/wp-content/uploads/2017/10/Rakotzbr%C3%BCcke-Bridge-Rakotz-Kromlau-Lake-Sun-Sunrise-Landscape-Reflection-Germany-Saxony-Travel-Photography-Nature-Photo-Spreewald-2.jpg',
            title: 'En algun lugar del mundo',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType3(
            imageUrl:
                'https://cdn.mos.cms.futurecdn.net/33ey9QdnBu642B68fJE2Xf-1200-80.jpg',
          ),
        ],
      ),
    );
  }
}
