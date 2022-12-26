import 'package:gap/gap.dart';
import 'package:ticket_booking_first_flutter_app/screens/ticket_view.dart';
import 'package:ticket_booking_first_flutter_app/utils/app_info_list.dart';
import 'package:ticket_booking_first_flutter_app/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_first_flutter_app/utils/app_styles.dart';
import 'package:ticket_booking_first_flutter_app/widgets/column_layout.dart';
import 'package:ticket_booking_first_flutter_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_first_flutter_app/widgets/options_tab_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getWidth(35)),
              ),
              Gap(AppLayout.getHeight(20)),
              const OptionsTab(option1: 'Upcoming', option2: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 0.5,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: '5221 345855',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(
                      sections: 15,
                      width: 5,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: '0055 444 77147',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: 'B2SG228',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(
                      sections: 15,
                      width: 5,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/visa.png',
                                  scale: 50,
                                ),
                                Text(
                                  ' *** 2462',
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const ColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 0.5,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(AppLayout.getHeight(15)),
                ),
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                        bottomRight: Radius.circular(AppLayout.getHeight(21)))),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/orangejuicesalta',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: AppLayout.getHeight(70),
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(25),
            top: AppLayout.getHeight(246),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child:
                  CircleAvatar(maxRadius: 4, backgroundColor: Styles.textColor),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(25),
            top: AppLayout.getHeight(246),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child:
                  CircleAvatar(maxRadius: 4, backgroundColor: Styles.textColor),
            ),
          )
        ]));
  }
}
