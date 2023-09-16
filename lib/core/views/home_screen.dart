import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/widgets/custom_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
/*
I have taken this data from an authentic source but if you want to use the same data, 
you should also confirm it once again from any authetic sources.
*/

  final List<String> items = [
    'Angry',
    'Anxious',
    'Bored',
    'Confident',
    'Confused',
    'Content',
    'Depressed',
    'Doubtful',
    'Grateful',
    'Greedy',
    'Guilty',
    'Happy',
    'Hurt',
    'Rage',
    'Indecisive',
    'Jealous',
    'Lazy',
    'Lonely',
    'Lost',
    'Nervous',
    'Uneasy',
    'Regret',
    'Sad',
    'Scared',

    // Add more items as needed
  ];
  final List<String> duas = [
    'My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me. (23:97-98).',
    'Allah is sufficient for me. There is no god worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne.',
    'My Lord, truly I am in dire need of any good which You may send me. (28:24)',
    'My Lord, enable me to be grateful for Your favour which You have bestowed upon me and upon my parents, and to do good deeds that please You. And admit me by Your mercy amongst Your righteous servants. (27:19)',
    'O Allah, grant us the best outcome in all of our affairs, and protect us from the humiliation of this world and the punishment of the hereafter.',
    'O Allah, all the favours that I or anyone from Your creation has received in the morning, are from You Alone. You have no partner. To You Alone belong all praise and all thanks.',
    'Allah is sufficient for me. There is no god worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne.',
    'Oh Allah, if my intended action is best for me, make it destined and easy for me, and grant me Your Blessings in it.',
    'All praise is for Allah, Who provided us food and drink and Who sufficed us and has sheltered us; for how many have none to suffice them or shelter them.',
    'O Allah, I seek Your protection from anxiety and grief. I seek Your protection from inability and laziness. I seek Your protection from cowardice and miserliness, and I seek Your protection from being overcome by debt and being overpowered by men.',
    'My Lord, I have certainly wronged myself, so forgive me. (28:16)',
    'All praise is for Allah through whose blessing righteous actions are accomplished.',
    'To Allah we belong and unto Him is our return. O Allah, recompense me for my affliction and replace it for me with something better.',
    'Oh Allah, remove anger from my heart.',
    'O The Ever Living, The Sustainer of all. ; I seek assistance through Your mercy. Rectify all of my affairs and do not entrust me to myself for the blink of an eye.',
    'My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me. (23:97-98)',
    'O The Ever Living, The Sustainer of all. ; I seek assistance through Your mercy. Rectify all of my affairs and do not entrust me to myself for the blink of an eye.',
    'Allah is sufficient for me. There is no god worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne.',
    'My Lord, truly I am in dire need of any good which You may send me. (28:24)',
    'Allah is sufficient for me. There is no God worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne.',
    'Oh Allah, descend upon me satisfaction that comes from you and open my chest and protect my heart with it.',
    'Our Lord, we have wronged ourselves. If You do not forgive us and have mercy upon us, we will surely be amongst the losers. (7:23)',
    'My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me. (23:97-98)',
    'I seek protection in the perfect words of Allah from His anger and punishment, and from the evil of His servants, and from the evil suggestions of the devils and from them appearing to me.',

    // Add more items as needed
  ];
  Color _getRandomColor() {
    final Random random = Random();

    // Generate a random value between 200 and 255 for the red component
    final int red = 200 + random.nextInt(56);

    // Generate a random value between 100 and 200 for the green component
    final int green = 100 + random.nextInt(101);

    // Generate a random value between 100 and 200 for the blue component
    final int blue = 100 + random.nextInt(101);

    return Color.fromRGBO(red, green, blue, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const Text(
              "I am feeling...",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Nexa',
                fontSize: 20.0,
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Adjust the number of columns as needed
                childAspectRatio: 1.3,
              ),
              itemBuilder: (BuildContext context, int index) {
                final randomColor = _getRandomColor();
                return CustomGridItem(
                  item: items[index],
                  color: randomColor,
                  duas: duas[index],
                );
              },
            ),
          ],
        ),
      )),
    ));
  }
}
