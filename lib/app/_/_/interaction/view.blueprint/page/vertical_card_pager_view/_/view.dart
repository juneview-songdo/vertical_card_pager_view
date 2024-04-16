import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: <Widget>[
          Expanded(
            child: VerticalCardPager(
                titles: [
                  "RED",
                  "YELLOW",
                  "BLACK",
                  "CYAN",
                  "BLUE",
                  "GREY",
                ],
                // required
                images: [
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.cyan,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.grey,
                  ),
                ],
                // required
                textStyle: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                // optional
                onPageChanged: (page) {
                  // optional
                },
                onSelectedItem: (index) {
                  // optional
                },
                initialPage: 0,
                // optional
                align: ALIGN.CENTER,
                // optional
                physics: ClampingScrollPhysics() // optional
                ),
          ),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
