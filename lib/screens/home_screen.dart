import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_first_flutter_app/screens/hotel_screen.dart';
import 'package:ticket_booking_first_flutter_app/screens/ticket_view.dart';
import 'package:ticket_booking_first_flutter_app/utils/app_info_list.dart';
import 'package:ticket_booking_first_flutter_app/widgets/double_text_widget.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good morning!',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.grey.shade400),
                          ),
                          const Gap(5),
                          Text(
                            'Book Tickets',
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/travel.png',
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        const Gap(5),
                        Text(
                          'Search',
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                  const Gap(40),
                  const AppDoubeText(
                      bigText: 'Upcoming Flights', smallText: 'View all')
                ],
              )),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(ticket: ticket))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  const AppDoubeText(bigText: 'Hotels', smallText: 'View all')),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children:
                  hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
