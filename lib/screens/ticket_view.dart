import "package:flutter/material.dart";
import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import 'package:ticket_booking_first_flutter_app/utils/app_layout.dart';
import 'package:ticket_booking_first_flutter_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_first_flutter_app/widgets/thick_container.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 159 : 168),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          children: [
            // showing blue part of the ticket
            Container(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? const Color(0xFF526799)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)))),
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                        const Spacer(),
                        ThickContainer(isColor: isColor),
                        Expanded(
                            child: Container(
                          child: Stack(children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child: AppLayoutBuilder(
                                  sections: 6,
                                  isColor: isColor,
                                  width: 3,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFF8ACCF7)),
                              ),
                            ),
                          ]),
                        )),
                        ThickContainer(isColor: isColor),
                        const Spacer(),
                        Text(
                          ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                        Text(
                          ticket['flying_time'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            // orange middle part
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomRight:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  ),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppLayoutBuilder(
                            sections: 15,
                            width: 5,
                            isColor: isColor,
                          ))),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomLeft:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  )
                ],
              ),
            ),
            // bottom part
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, bottom: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3),
                          const Gap(5),
                          Text(
                            'Date',
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3),
                          const Gap(5),
                          Text(
                            'Departure time',
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            'Number',
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
