import 'package:flutter/material.dart';
import 'package:simple_calculator/theme.dart';
import 'package:simple_calculator/ui/widgets/custom_filled_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          top: 40,
          right: 32,
          bottom: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: redColor,
                    ),
                  ),
                  Text(
                    data.join(''),
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            // Row one
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFilledButtonWidget(
                  text: "Ac",
                  backgroundColor: greyColor,
                  onPressed: () {
                    setState(() {
                      data.clear();
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "X",
                  backgroundColor: greyColor,
                  onPressed: () {},
                ),
                CustomFilledButtonWidget(
                  text: "/",
                  backgroundColor: redColor,
                  onPressed: () {
                    setState(() {
                      data.add('/');
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "*",
                  backgroundColor: redColor,
                  onPressed: () {
                    setState(() {
                      data.add('*');
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            // Row Two
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFilledButtonWidget(
                  text: "7",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(7);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "8",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(8);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "9",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(9);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "-",
                  backgroundColor: redColor,
                  onPressed: () {
                    setState(() {
                      data.add('-');
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            // Row Three
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFilledButtonWidget(
                  text: "4",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(4);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "5",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(5);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "6",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(6);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "+",
                  backgroundColor: redColor,
                  onPressed: () {
                    setState(() {
                      data.add('+');
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            // Row Three
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFilledButtonWidget(
                  text: "1",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(1);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "2",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(2);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "3",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(3);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: "=",
                  backgroundColor: redColor,
                  onPressed: () {
                    setState(() {
                      data.add('=');
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            // Row Three
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFilledButtonWidget(
                  text: "0",
                  width: 240,
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add(0);
                    });
                  },
                ),
                CustomFilledButtonWidget(
                  text: ".",
                  backgroundColor: black60Color,
                  onPressed: () {
                    setState(() {
                      data.add('.');
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
