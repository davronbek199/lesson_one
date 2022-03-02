import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String appBar;
  final String content;

  const DetailsPage({
    Key? key,
    required this.image,
    required this.content,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBar),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 600,
              height: 300,
              child: Image.asset(image, fit: BoxFit.contain),
            ),
            Text(content),
            SizedBox(height: 12,),
            OutlinedButton(onPressed: (){showMyDialog(context);}, child: Text("Buy"))
          ],
        ),
      ),
    );
  }

  Future showMyDialog(BuildContext context) {
    return showDialog(
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text("Buy this car"),
        content: Text("do you want continue ?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("yes "),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("no"),
          ),
        ],
      ),
      context: context,
    );
  }
}
