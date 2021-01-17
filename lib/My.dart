import 'package:flutter/material.dart';
import 'package:diff_image/diff_image.dart';

class My extends StatelessWidget {
  final FIRST_IMAGE =
      'https://raw.githubusercontent.com/nicolashahn/diffimg/master/images/mario-circle-cs.png';
  final SECOND_IMAGE =
      'https://raw.githubusercontent.com/nicolashahn/diffimg/master/images/mario-circle-node.png';

  void foo() async {
    try {
      var diff = await DiffImage.compareFromUrl(
        FIRST_IMAGE,
        SECOND_IMAGE,
      );
      print('The difference between images is: ${diff.diffValue} percent');
      await DiffImage.saveDiffImg(
        diffImg: diff.diffImg,
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: new AppBar(
            automaticallyImplyLeading: false,
            title: new Row(
              children: [
                new GestureDetector(
                    onTap: () {}, child: new Icon(Icons.arrow_back)),
                new SizedBox(width: 5),
                new CircleAvatar(
                  backgroundColor: new Color(0xff888888),
                ),
                new SizedBox(width: 5),
              ],
            ),
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new RaisedButton(
                        onPressed: () {
                          foo();
                        },
                        child: new Text('مقایسه')),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
