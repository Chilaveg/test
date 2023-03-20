import 'package:flutter/material.dart';
import 'package:forestvpn_test/repositories/Screens/main_screen.dart';
import 'package:forestvpn_test/repositories/news/mock_news_repository.dart';
import 'package:forestvpn_test/repositories/news/models/article.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({this.article});
  final Article? article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(article!.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.75),
                      borderRadius: BorderRadius.circular(20.0),
              ),
                    padding: EdgeInsets.only(top: 20, left: 10),
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 30,
                      color: Colors.grey,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 10.0, right: 100),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(article!.title.toUpperCase(),
                          style: TextStyle(
                            color: (Colors.white),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding:
                  EdgeInsets.only(top: 20, left: 10.0, bottom: 10, right: 50),
              child: Text(
                article!.description.toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
