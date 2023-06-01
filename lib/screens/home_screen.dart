import 'package:flutter/material.dart';
import 'package:gamefy/widgets/game_item.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> games = [
    {
      'id': 'user1',
      'name': 'PUBG',
      'company': 'Unreal Engine',
      'imgUrl':
          'https://images.unsplash.com/photo-1557461762-e08315322e3d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=465&q=80',
    },
    {
      'id': 'user2',
      'name': 'Minecraft ',
      'company': 'Mojang Studios',
      'imgUrl':
          'https://images.unsplash.com/photo-1587573089734-09cb69c0f2b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=725&q=80',
    },
    {
      'id': 'user3',
      'name': 'Grand Theft Auto V',
      'company': 'Rockstar North',
      'imgUrl':
          'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png',
    },
    {
      'id': 'user4',
      'name': 'Fortnite',
      'company': 'Epic Games',
      'imgUrl':
          'https://cdn2.unrealengine.com/thumbnail-cinematic-1920x1080-fe7e748660c2.jpg',
    },
    {
      'id': 'user5',
      'name': 'Call of Duty',
      'company': 'Warzone - Activision',
      'imgUrl':
          'https://www.gamingscan.com/wp-content/uploads/2020/10/Call-of-Duty-Game-Order.jpg',
    },
    {
      'id': 'user6',
      'name': 'God of War',
      'company': 'Santa Monica Studio',
      'imgUrl':
          'https://assetsio.reedpopcdn.com/god-of-war-walkthrough-guide-5004-1642178551828.jpg?width=1200&height=1200&fit=crop&quality=100&format=png&enable=upscale&auto=webp',
    },
    {
      'id': 'user7',
      'name': 'Super Mario Odyssey ',
      'company': 'Nintendo',
      'imgUrl':
          'https://www.trustedreviews.com/wp-content/uploads/sites/54/2017/06/super-mario-odyssey-1.jpg',
    },
    {
      'id': 'user8',
      'name': 'FIFA 21',
      'company': 'EA Vancouver',
      'imgUrl':
          'https://library.sportingnews.com/2021-08/fifa-21-kylian-mbappe_5y8kt6rcv8tf1kifrjd2ku44c.jpg',
    },
    {
      'id': 'user9',
      'name': 'Valorant',
      'company': 'Riot Games',
      'imgUrl':
          'https://cdn.arstechnica.net/wp-content/uploads/2020/04/valorant-listing-800x450.jpg',
    },
    {
      'id': 'user10',
      'name': 'Apex Legends',
      'company': 'Respawn Entertainment',
      'imgUrl':
          'https://image.api.playstation.com/vulcan/ap/rnd/202305/0810/57c1cd6d1107928c8dfa58f70137c1bf91a1332b0e74d1cc.png',
    },
    {
      'id': 'user11',
      'name': 'Overwatch',
      'company': 'Blizzard Entertainment',
      'imgUrl': 'https://cdn.mos.cms.futurecdn.net/hDTJXkRBXipctdwAZPLu8T.jpg',
    },
  ];

  void gameRemover(String gameId) {
   
    setState(() {
      games.removeWhere((game) {
        return game['id'] == gameId;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black.withAlpha(100),
        title: const Text('Gamefy'),
        centerTitle: true,
      ),
      body: ListView(
        itemExtent: 90,
        children: games.map((game) {
          return GameItem(
            id: game['id'],
            name: game['name'],
            company: game['company'],
            imgUrl: game['imgUrl'],
            gameRemover: gameRemover,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: Colors.amber.withAlpha(150),
        onPressed: () {},
        child: const Icon(
          Icons.search,size: 35,
        ),
      ),
    );
  }
}
