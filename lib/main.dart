import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        title: 'Keane Emanuel Dalisay',
        home: HomeView()
      ));
}

class HomeView extends StatelessWidget {
  final MainAppBar = AppBar(
      title: Text('Keane Emanuel Dalisay', style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w700)),
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    shadowColor: Colors.black,
  );
  final Tagline = Container(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: RichText(
          text: TextSpan(
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50, fontFamily: 'Inter', color: Color.fromRGBO(21, 21, 21, 1)),
            children: [
              TextSpan(text: 'Crafting you a'),
              TextSpan(text: ' sustainable', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50, fontFamily: 'Inter', color: Color.fromRGBO(255, 255, 255, 1) ,backgroundColor: Color.fromRGBO(21, 179, 146, 1)),),
              TextSpan(text: ' web')
            ]
          ))
  );
  final Banner = Container(
    margin: EdgeInsets.fromLTRB(20, 20, 20, 50),
    child: Column(
      children: [
        Image.asset('assets/images/Keane.png', width: 400, height: 400),
        Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, fontFamily: 'Inter', color: Color.fromRGBO(21, 21, 21, 1)),
                    children: [
                      TextSpan(text: 'Hi, I\'m Keane!', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50, fontFamily: 'Inter')),
                      TextSpan(text: '\n\nA long-time web developer who '),
                      TextSpan(text: 'crafts websites like a gardener', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30, fontFamily: 'Inter')),
                      TextSpan(text: ' that tends to their plants'),
                      TextSpan(text: ' (psst, I\'m a gardener myself)', style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, fontSize: 16, fontFamily: 'Inter', color: Color.fromRGBO(21, 21, 21, 1)))
                    ]
                )))
      ],
    )
  );
  final CraftProcess = Container(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 50),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child:
              RichText(text: TextSpan(
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50, fontFamily: 'Inter', color: Color.fromRGBO(21, 21, 21, 1)),
                children: [
                  TextSpan(text: 'How do I'),
                  TextSpan(text: ' take care ', style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1) ,backgroundColor: Color.fromRGBO(21, 179, 146, 1))),
                  TextSpan(text: ' of your website?')
                ]
              ))
        ),
        Row(children: [Image.asset('assets/images/noun-soil-6701335.png', width: 100, height: 100), Expanded(child: Text('Knowing your users and their needs is the first step. Much like how knowing which type of soil is right for your plant.', style: TextStyle(fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.w400)))]),
        Row(children: [Image.asset('assets/images/noun-seed-6954847.png', width: 100, height: 100), Expanded(child: Text('\nPlanting your first seed means figuring out what content to put in and how it should be structured within your website.', style: TextStyle(fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.w400)))]),
        Row(children: [Image.asset('assets/images/noun-shoots-6954853.png', width: 100, height: 100), Expanded(child: Text('\nTo support your seedlings growth means choosing the right technologies for your website. Don\'t overengineer with too much sticks!', style: TextStyle(fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.w400)))]),
        Row(children: [Image.asset('assets/images/noun-plant-waterer-6954859.png', width: 100, height: 100), Expanded(child: Text('\nIteratively test your website with your users, water them every so often.', style: TextStyle(fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.w400)))]),
        Row(children: [Image.asset('assets/images/noun-flower-1043642.png', width: 100, height: 100), Expanded(child: Text('\nWhen your plant blooms, this means your users are satisfied with what they found. Horay!', style: TextStyle(fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.w400)))])
      ],
    )
  );
  final WhyGardening = Container(
    margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
    child: Column(
      children: [
        Image.asset('assets/images/woman_holding_seedlings.jpg', fit: BoxFit.cover),
        Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, fontFamily: 'Inter', color: Color.fromRGBO(21, 21, 21, 1)),
                    children: [
                      TextSpan(text: 'Like plants, websites come and go. If you don\'t invest as much care in them, they\'ll slowly die off on their own. \n\nLess users will visit thus management will come to a point and ask:'),
                      TextSpan(text: '\n\n"Is it still work the money to keep our website up?"', style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, fontSize: 30, fontFamily: 'Inter')),
                      TextSpan(text: '\n\nIt\'s why investing time in both user needs and the overall design architecture will'),
                      TextSpan(text: ' make users willing to visit and support your presence on the web.',  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1) ,backgroundColor: Color.fromRGBO(21, 179, 146, 1)))
                    ]
                )
            )
        )
      ]
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.MainAppBar,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          this.Tagline,
          this.Banner,
          this.CraftProcess,
          this.WhyGardening
        ],
      )
    );
  }
}