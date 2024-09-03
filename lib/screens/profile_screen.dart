import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/logo.png")),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    " Book tickets",
                    style: Styles.headLineStyle1,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "  Dubai",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      // ignore: avoid_print
                      print("You are tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 12,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: const Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You'v got a new reward",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("You have 99 flights in a year",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          const SizedBox(height: 10),
          // ignore: avoid_unnecessary_containers
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "921902",
                  style: TextStyle(
                    color: Styles.textColor,
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "05 April 2024",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                        firstText: "23 042",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    ColumnLayout(
                        firstText: "Airline CO",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                        firstText: "25",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    ColumnLayout(
                        firstText: "McDonal's",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                        firstText: "54 489",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    ColumnLayout(
                        firstText: "Exuma",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          InkWell(
              onTap: () {
                // ignore: avoid_print
                print("You are tapped");
              },
              child: Center(
                  child: Text(
                "How to get more miles?",
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              ))),
        ],
      ),
    );
  }
}
