import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/screens/ticket_view.dart';
import 'package:ticket_book/utils/app_info_list.dart';
// import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/column_layout.dart';
import 'package:ticket_book/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  final bool? isHome;
  const TicketScreen({super.key, this.isHome});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    // ignore: avoid_unnecessary_containers
    return Container(
      color: Styles.bgColor,
      child: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              const SizedBox(height: 20),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  isBlueColor: true,
                  ticket: ticketList[2],
                  isColor: true,
                ),
              ),
              const SizedBox(height: 0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                // color: Colors.white,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: "5234 678967",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: "58KE 888 56UI7",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                        ),
                        SizedBox(height: 10),
                        ColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage("assets/images/visa_card.png"),
                                  width: 45,
                                  height: 20,
                                ),
                                Text(
                                  " *** 2456",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Payment method",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ColumnLayout(
                                firstText: "\$249.50",
                                secondText: "Price",
                                alignment: CrossAxisAlignment.end)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 2),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20, bottom: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  )
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                margin: const EdgeInsets.symmetric(horizontal: 12,),
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: TicketView(
                  isBlueColor: false,
                  ticket: ticketList[2],
                ),
              ),
            ],
          ),
          Positioned(
            left: 25,
            top: 295,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                )
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: 295,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                )
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
