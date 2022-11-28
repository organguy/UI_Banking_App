import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:ui_banking_app/data_json/balance_json.dart';
import 'package:ui_banking_app/screens/card_screen.dart';
import 'package:ui_banking_app/theme/color.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  Widget _getAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: primary,
      leading: IconButton(
        onPressed: (){},
        icon: const CircleAvatar(
          backgroundImage: NetworkImage('https://img.fixthephoto.com/blog/images/gallery/news_preview_mob_image__preview_11368.png'),
        ),
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: const Icon(AntDesign.search1),
        )
      ],
    );
  }

  Widget _getAccountSection(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Accounts',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 10,
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: secondary.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Icon(
                              AntDesign.wallet,
                              color: primary,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        const Text(
                          '40832-810-5-7000-012345',
                          style: TextStyle(
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: primary,
                    )
                  ],
                ),
                const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Divider(thickness: 0.2,),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: secondary.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Icon(
                          MaterialIcons.euro_symbol,
                          color: primary,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    const Text(
                      '18 199.24 EUR',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Divider(thickness: 0.6,),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: secondary.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Icon(
                          MaterialCommunityIcons.currency_gbp,
                          color: primary,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    const Text(
                      '36.67 GBP',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Cards',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              width: 90,
              height: 22,
              decoration: BoxDecoration(
                color: secondary.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Ionicons.ios_add,
                    size: 16,
                    color: primary,
                  ),
                  Text(
                    'ADD CARD',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: primary
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 15,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => const CardScreen()));
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: secondary.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Icon(
                                AntDesign.creditcard,
                                color: primary,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(width: 15,),
                          const Text(
                            'EUR *2330',
                            style: TextStyle(
                                fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        '8 199.24 EUR',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _getBody(){

    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.25,
          decoration: BoxDecoration(
            color: primary
          ),
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: 110,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(balanceLists.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: SizedBox(
                          width: size.width * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    balanceLists[index]['currency'],
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                        color: index == 0 ? Colors.white : Colors.white.withOpacity(0.5)
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Text(
                                    balanceLists[index]['amount'],
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: index == 0 ? Colors.white : Colors.white.withOpacity(0.5)
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Text(
                                balanceLists[index]['description'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.5)
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  child: Row(
                    children: [
                      const SizedBox(width: 15,),
                      Flexible(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: secondary.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: const Center(
                            child: Text(
                              'Add money',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Flexible(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: secondary.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: const Center(
                            child: Text(
                              'Exchange',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15,),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              margin: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 40, left: 20, right: 20),
                child: _getAccountSection(),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: _getAppBar(),
      ),
      body: _getBody(),
    );
  }
}
