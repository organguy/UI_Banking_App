import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:ui_banking_app/data_json/card_json.dart';
import 'package:ui_banking_app/data_json/card_operations_json.dart';
import 'package:ui_banking_app/theme/color.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {


  Widget _getAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
            size: 22,
        ),
      ),
      title: const Text(
        'Card',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black
        ),
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 25,
          )
        ),
      ],
    );
  }


  Widget _getCards(int index){

    var card = cardLists[index];

    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              card['currency'],
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              )
            ),
            const SizedBox(width: 5,),
            Text(
              card['amount'],
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          ],
        ),
        const SizedBox(height: 15,),
        Container(
          width: size.width * 0.85,
          height: 170,
          decoration: BoxDecoration(
            color: card['bg_color'],
            borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Feather.credit_card,
                      size: 30,
                      color: Colors.white.withOpacity(0.3),
                    ),
                    const SizedBox(height: 15,),
                    Text(
                      card['card_number'],
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                        wordSpacing: 15
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VALID DATE',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: 12
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          card['valid_date'],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/master_card_logo.png',
                      width: 50,
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _getBody(){
    final PageController controller = PageController();

    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            height: 240,
            child: PageView(
              controller: controller,
              children: List.generate(cardLists.length, (index) {
                return _getCards(index);
                //return Text('3213213213');
              }),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 10,
                  blurRadius: 10,
                )
              ]
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(
                          width: size.width / 2,
                          height: 55,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: primary,
                                width: 3.5,
                              )
                            )
                          ),
                          child: const Center(
                            child: Text(
                              'Operations',
                              style: TextStyle(
                                fontSize: 15,
                                color: primary,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          width: size.width / 2,
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black.withOpacity(0.05),
                                    width: 1,
                                  )
                              )
                          ),
                          child: Center(
                            child: Text(
                              'History',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: primary.withOpacity(0.5),
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Column(
                  children: List.generate(cardOperations.length, (index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 10,
                            )
                          ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: secondary.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Icon(
                                    cardOperations[index]['icon'],
                                    size: 20,
                                    color: primary,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Text(
                                cardOperations[index]['title'],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 30,)
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: _getAppBar(),
      ),
      body: _getBody(),
    );
  }
}
