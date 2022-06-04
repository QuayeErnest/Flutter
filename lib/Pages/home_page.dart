import 'dart:ui';

import 'package:app/Utilities/my_buttons.dart';
import 'package:app/Utilities/my_card.dart';
import 'package:app/Utilities/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final _controller = PageController();
  List<Mycard> ernest = [
    Mycard(
        balance: 234234,
        cardNumber: 234234,
        expiryMonth: 2343,
        expiryYear: 234234,
        color: Colors.purple),
    Mycard(
        balance: 34545,
        cardNumber: 21234,
        expiryMonth: 5456,
        expiryYear: 233,
        color: Colors.blue),
    Mycard(
        balance: 111,
        cardNumber: 4444,
        expiryMonth: 22222,
        expiryYear: 3333,
        color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {},
          child: Icon(
            Icons.monetization_on_outlined,
            size: 32,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        size: 32,
                        color: Colors.pink,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        size: 32,
                        color: Colors.grey,
                      )),
                ]),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              //appbar

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My ",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Cards",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[400]),
                        child: Icon(Icons.add)),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              //cards

              Container(
                height: 200,
                child: ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: PageView.builder(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: ernest.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex == index;
                            });
                          },
                          child: ernest[index],
                        );
                      })),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),
              //3 button => send + bill + pay
              SizedBox(
                height: 23,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //send
                    MyButton(
                        iconImageButton: "assets/send_money.png",
                        butttonText: "Send"),

                    SizedBox(width: 23),
                    //pay
                    MyButton(
                        iconImageButton: "assets/bill.png", butttonText: "Pay"),
                    //bill
                    SizedBox(width: 23),
                    MyButton(
                        iconImageButton: "assets/card.png",
                        butttonText: "Bill"),
                  ],
                ),
              ),
//column=> stats + transcations

              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  children: [
                    //statistics
                    MyListTile(
                        iconImagePath: "assets/statistics.png",
                        tileTitle: "Statistics",
                        tileSubTitle: "Payment and income"),

                    //transactions

                    MyListTile(
                        iconImagePath: "assets/transaction.png",
                        tileTitle: "Transactions",
                        tileSubTitle: "Transaction History"),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
} 























              // Container(
              //   height: 140,
                
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       Mycard(
              //           balance: 53.2,
              //           cardNumber: 8934789,
              //           expiryMonth: 04,
              //           expiryYear: 23,
              //           color: Colors.green),
              //       Mycard(
              //           balance: 12312.9,
              //           cardNumber: 9999999999,
              //           expiryMonth: 12,
              //           expiryYear: 12,
              //           color: Colors.red),
              //       Mycard(
              //           balance: 8888,
              //           cardNumber: 2222,
              //           expiryMonth: 21,
              //           expiryYear: 33,
              //           color: Colors.yellow)
              //     ],
              //   ),
              // ),
