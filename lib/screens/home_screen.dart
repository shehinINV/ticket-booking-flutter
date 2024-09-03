import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/screens/hotel_screen.dart';
import 'package:ticket_book/screens/ticket_view.dart';
// import 'package:ticket_book/screens/ticket_view.dart';
import 'package:ticket_book/utils/app_info_list.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Styles.bgColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headLineStyle3,
                          ),
                          const SizedBox(height: 3),
                          Text("Book Tickets", style: Styles.headLineStyle1),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        const SizedBox(width: 10),
                        Text('Search', style: Styles.headLineStyle4)
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ticketList.map((ticket) => TicketView(ticket: ticket, isBlueColor: false,)).toList(),
              ),
            ),
            const SizedBox(height: 25),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const AppDoubleTextWidget(
                  bigText: "Hotels", smallText: "View all"),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),  
              ),
            ),
          ],
        ),
      ),
    );
  }
}
