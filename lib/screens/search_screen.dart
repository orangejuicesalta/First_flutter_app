import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_first_flutter_app/utils/app_layout.dart';
import 'package:ticket_booking_first_flutter_app/utils/app_styles.dart';
import 'package:ticket_booking_first_flutter_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_first_flutter_app/widgets/icon_text.dart';
import 'package:ticket_booking_first_flutter_app/widgets/options_tab_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text('What are\nyou looking for?',
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getWidth(35))),
            Gap(AppLayout.getHeight(20)),
            const OptionsTab(
              option1: 'Airline Tickets',
              option2: 'Hotels',
            ),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(
              icon: Icons.flight_takeoff_rounded,
              text: 'Departure',
            ),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(
              icon: Icons.flight_land_rounded,
              text: 'Arrival',
            ),
            Gap(AppLayout.getHeight(25)),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getWidth(18),
                    horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: const Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(
                    AppLayout.getWidth(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'find tickets',
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                )),
            Gap(AppLayout.getHeight(40)),
            const AppDoubeText(
                bigText: 'Upcoming Flights', smallText: 'View all'),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: AppLayout.getHeight(360),
                    width: size.width * .42,
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        boxShadow: [BoxShadow(color: Colors.grey.shade200)]),
                    child: Column(
                      children: [
                        Container(
                          height: AppLayout.getHeight(170),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(12)),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('./assets/sit.jpeg'))),
                        ),
                        Gap(AppLayout.getHeight(12)),
                        Text(
                          "20% discount on the easly booking of this flight. Don't miss out this chance!",
                          style: Styles.headLineStyle2,
                        )
                      ],
                    )),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * .44,
                          height: AppLayout.getHeight(170),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getHeight(15)),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(18))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount\nfor survey',
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Gap(AppLayout.getHeight(10)),
                                Text(
                                  'Take the survey about our survices and get discount',
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ]),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15),
                      ),
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(180),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Take Love',
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Gap(
                            AppLayout.getHeight(5),
                          ),
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 30)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 40)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 30)),
                            ]),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
