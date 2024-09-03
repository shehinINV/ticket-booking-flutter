import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white),
              child: Center(
                child: Text(
                  firstTab,
                ),
              ),
            ),
            const SizedBox(width: 8,),
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50)),
                // color: Color(0xFFF4F6FD)
              ),
              child: Center(
                child: Text(
                  secondTab,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
