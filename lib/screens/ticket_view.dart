import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket; 
  final bool? isColor;
  final bool isBlueColor;
  const TicketView({super.key, required this.ticket, this.isColor, required this.isBlueColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style:
                              isColor == null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black),
                        ),
                        Expanded(child: Container()),
                        ThickContainer(isBlueColor: isBlueColor,),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            )),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_outlined,
                                  color: isColor == null? Colors.white : const Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        )),
                        ThickContainer(isBlueColor: isBlueColor,),
                        Expanded(child: Container()),
                        Text(
                          ticket['to']['code'],
                          textAlign: TextAlign.end,
                          style:
                              isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(ticket['from']['name'],
                              style: isColor == null? Styles.headLineStyle4
                                  .copyWith(color: Colors.white) : Styles.headLineStyle4),
                        ),
                        Text(
                          ticket['flying_time'],
                          style:
                              isColor == null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(ticket['to']['name'],
                              textAlign: TextAlign.end,
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4
                                 ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: isColor == null? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ))),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == null? Styles.orangeColor : Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ticket['date'], style: isColor == null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black)),
                            const SizedBox(height: 10),
                            Text("Date", style: isColor == null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ticket['departure_time'],
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Departure time",
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ticket['number'].toString(),
                              textAlign: TextAlign.end,
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Number",
                              textAlign: TextAlign.end,
                             style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
