import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:forestvpn_test/repositories/news/mock_news_repository.dart';
import 'package:forestvpn_test/repositories/news/models/article.dart';
import 'package:forestvpn_test/repositories/Screens/second_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Article> list1 = [];
  List<Article> list2 = [];
  void function() async{
    list1 = await MockNewsRepository().getFeaturedArticles();
    list2 = await MockNewsRepository().getLatestArticles();
  }
  @override
  Widget build(BuildContext context) {
    function();
    print(list1.toString() + '\n' + list2.toString());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'News',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    list2.forEach((element) {element.readed=true;});
                  });
                },
                child: Text(
                  'Mark all read',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
        body: ListView.builder(
            itemCount: list2.length + 1,
            itemBuilder: (context, i) {
              if (i == 0) {
                return Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Featured",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ),
                    Container(
                      // margin: const EdgeInsets.symmetric(vertical: 100.0),
                      height: 250,
                      decoration: BoxDecoration(),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: list1.length,
                          itemBuilder: (context, j) {
                            return GestureDetector(
                              onTap: () async
                              {
                              Article article = await MockNewsRepository().getArticle(list1[j].id);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(article: article,)));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 8,
                                  child: Container(
                                    //margin: const EdgeInsets.symmetric(
                                      //  horizontal: 5),
                                    height:
                                        MediaQuery.of(context).size.width - 20,
                                    width:
                                        MediaQuery.of(context).size.width - 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            list1[j].imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    //child: Image(image: NetworkImage(appBannerList[index].thumbnaiUrl),),

                                    child: Align(
                                      //alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.0),
                                          color: Color.fromRGBO(0, 0, 0, 0.75),),
                                        padding: EdgeInsets.only(
                                            left: 10.0, bottom: 10, right: 10),
                                        // height: MediaQuery.of(context).size.width - 20,
                                        // width: MediaQuery.of(context).size.width - 20,
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                                list1[j].title
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                  color: (Colors.white),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                )),
                                          ),
                                        ),
                                        // child: Text(
                                        //   list1[i-1].title
                                        //       .toUpperCase(),
                                        //   style: (TextStyle(
                                        //       color: Colors.white,
                                        //       fontSize: 20)),
                                        //   textAlign: TextAlign.left,
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Latest News",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ),
                  ],
                );
              } else {
                return Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () async {
                      setState(() {
                        list2[i-1].readed = true;
                      });
                      Article article = await MockNewsRepository().getArticle(list2[i-1].id);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(article: article,)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 28),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 8,
                        child: Container(
                          //width: MediaQuery.of(context).size.width - 56,
                          // margin: EdgeInsets.symmetric(
                          //     horizontal: 28, vertical: 5),
                          decoration: BoxDecoration(
                              color: list2[i-1].readed ? Colors.black.withOpacity(0.4) : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 103,
                          // width: MediaQuery.of(context).size.width - 56,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                width: 90,
                                height: 60,
                                margin: EdgeInsets.only(right: 23),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Image(
                                  image: NetworkImage(
                                    list2[i - 1].imageUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      list2[i - 1].title,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                            '${DateTime.now().difference(list2[i - 1].publicationDate).inDays} day ago')),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
            }));
  }
}
