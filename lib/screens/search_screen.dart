import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:ticket_book/utils/app_layout.dart';
// import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/double_text_widget.dart';
import 'package:ticket_book/widgets/icon_text.dart';
import 'package:ticket_book/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      color: Styles.bgColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Text("What are\nyou looking for?",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: 35, color: Colors.black)),
            const SizedBox(height: 20),
            const AppTicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
            const SizedBox(
              height: 20,
            ),
            const AppIconText(
                text: "Departure", icon: Icons.flight_takeoff_rounded),
            const SizedBox(height: 15),
            const AppIconText(text: "Arrival", icon: Icons.flight_land_rounded),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: const Color(0xd91130CE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 425,
                  width: size.width * .42,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/images/plane_sit.jpg"))
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("20% discount on the early booking of this flight. Don't miss",
                      style: Styles.headLineStyle2,)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * .44,
                          height: 210,
                          decoration: BoxDecoration(
                            color: const Color(0xFF3AB8BD),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width * .44,
                      height: 210,
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFFEC6545)
                      ),
                      child: Column(
                        children: [
                          Text("Take love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          const SizedBox(height: 12),
                          RichText(text: const TextSpan(
                            children: [
                              TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 35)),
                              TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 48),),
                              TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 35),
                            ),]
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
