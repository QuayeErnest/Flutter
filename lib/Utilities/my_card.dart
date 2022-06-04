import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;
  const Mycard(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //cards
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: Container(
        //width: 200.0,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: color,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Image.asset("assets/visa.png"),
                  ),
                ],
              ),
              //SizedBox(height: 8.0),
              Text(
                "\$" + balance.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //card Number
                  Text(cardNumber.toString(),
                      style: TextStyle(color: Colors.white)),

                  //card expiry date
                  Text(
                    expiryMonth.toString() + "/" + expiryYear.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
