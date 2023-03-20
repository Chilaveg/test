import 'package:forestvpn_test/repositories/news/repository.dart';

class MockNewsRepository implements AbstractNewsRepository {
  @override
  Future<List<Article>> getLatestArticles() async {
    List<Article> latest = [];
    _mockArticles.forEach((element) {
      if (DateTime.now().difference(element.publicationDate).inDays<2) {
        latest.add(element);
      }
    });
    return latest;
  }

  /// Can throw [StateError]
  @override
  Future<Article> getArticle(String id) async {
    return _mockArticles.firstWhere((e) => e.id == id);
  }

  @override
  Future<List<Article>> getFeaturedArticles() async {
    List<Article> featured = [];
    List<Article> buffer = await getLatestArticles();
    _mockArticles.forEach((element) {
      if (!buffer.contains(element))
        {
          featured.add(element);
        }
    });
    return featured;
  }
}


final _mockArticles = [
  Article(
    id: '1108389wwwr-b3db-11ec-b909-0242ac120002',
    title: 'Неизвестный дегустатор ...',
    publicationDate: DateTime.now().subtract(const Duration(days: 4)),
    imageUrl: 'https://www.meme-arsenal.com/memes/61094bac8ac5bef476c8827bdc45e84e.jpg',
    description: 'Неизвестный дегустатор придал критике известные блюда ресторана "Michlene", по его словам блюда не соответствуют общепринятым стандартам, а также имееют "Говёный вкус"',
  ),
  Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'Tinder перестанет отображать пол ...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://panorama.pub/storage/images/3e/8b/d037e728267619b452e4feb2a674/previews/18620-main.jpg.webp',
    description: '''Социальная сеть Tinder объявила, что её транссексуальные пользователи вскоре будут отображаться в анкетах в соответствии со своим новым полом. Биологический пол (имевшийся при рождении) теперь не будет виден в анкетах, равно как и сам факт транссексуальности.

В компании объяснили это решение тем, что реальное значение имеет только тот гендер, который человек выбрал себе сам. Возможность исключить из выдачи транссексуалов «стимулирует и поощряет трансфобное поведение, дискриминацию, попытки отделить LGBTQ-людей в сепарированную социальную группу».

«Возможность убрать из поисковой выдачи транссексуальных персон, к сожалению, внушала некоторым пользователям мысль, что они могут выбирать партнёров на основании биологического пола, а не реального пола, выбранного человеком, – говорит директор Tinder по равноправию Дженна О'Брайан. – Но это то же самое, как если бы работодателям разрешили отказывать соискателям из-за их цвета кожи. Это абсолютно недопустимо».

Нововведения вступят в силу в США в течение апреля, а в июле, после того как прогрессивный эксперимент будет признан удачным, его распространят и на остальные страны.''',
  ),
  Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),
  Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),
  Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),
  Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),Article(
    id: '1108389a-b3db-11ec-b909-0242ac120002',
    title: 'We are processing your request...',
    publicationDate: DateTime.now().subtract(const Duration(days: 1)),
    imageUrl: 'https://i.ibb.co/Jk8FMMp/unsplash-Oqtaf-YT5k-Tw.jpg',
    description: '''Please excuse the interruption.  
Due to Google's efforts to maintain a “safe ads ecosystem” for its advertisers, publishers and users from fraud and bad experiences, Google has placed restrictions on our ad serving that limit our ability to provide free VPN services. 
Regrettably, this is beyond our control.  
To continue to enjoy ForestVPN without interruptions, please upgrade to our Premium version.''',
  ),



  Article(
    id: '0e8dba30-b3dc-11ec-b909-0242ac120002',
    title: 'What is Lorem Ipsum...',
    publicationDate: DateTime.now().subtract(const Duration(days: 2)),
    imageUrl: 'https://i.ibb.co/VCb4zLk/unsplash-SYTO3xs06f-U-1.jpg',
    description:
        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
  ),
  Article(
    id: '787fa7fa-b3dc-11ec-b909-0242ac120002',
    title: 'Why do we use it...',
    publicationDate: DateTime.now().subtract(const Duration(days: 2, hours: 4)),
    imageUrl: 'https://i.ibb.co/DK9qHp0/daafc501e01c748fc88d582e7dd114de.jpg',
    description:
        '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).''',
  ),
  Article(
    id: 'b818ca9a-b3dc-11ec-b909-0242ac120002',
    title: 'Where does it come from...',
    publicationDate: DateTime.now().subtract(const Duration(days: 3, hours: 5)),
    imageUrl: 'https://i.ibb.co/3k12hXc/i-Phone-X-in-Hand-Mockup-2.jpg',
    description:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
  ),
];

