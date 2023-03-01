import 'package:flight_ui/colors.dart';
import 'package:flutter/material.dart';

class TicketTab extends StatelessWidget {
  const TicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/emirates_logo.png',
                          height: 50,
                          width: 100,
                          color: backgroundColor,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Icon(
                          Icons.flight_takeoff,
                          color: primaryColor,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Ticket Price',
                              style: TextStyle(
                                color: backgroundColor,
                              ),
                            ),
                            Text(
                              '\$ 170.00',
                              style: TextStyle(
                                fontSize: 30,
                                color: backgroundColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/map_image.png',
                        color: backgroundColor,
                        height: 180,
                      ),
                    )
                  ],
                ),
                const Divider(
                  height: 15,
                  color: backgroundColor,
                  thickness: 0.4,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        flightDetails('Flight Date', 'May 19'),
                        flightDetails('Gate', 'B2'),
                        flightDetails('Flight No', 'KB76'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        flightDetails('Boarding time', '8:35 AM'),
                        flightDetails('Seat', '19A'),
                        flightDetails('Class', 'Economy'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text(
                      'Boarding pass',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: backgroundColor,
                      ),
                    ),
                    Image.asset(
                      'assets/bar_code.jpg',
                      height: 100,
                    ),
                  ],
                ),
              ]),
        ),
        const Positioned(
          bottom: 150,
          right: -10,
          child: CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 10,
          ),
        ),
        const Positioned(
          bottom: 150,
          left: -10,
          child: CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 10,
          ),
        ),
        Positioned(
          bottom: 155,
          left: 0,
          child: SizedBox(
            height: 10,
            width: 400,
            child: Row(
                children: List.generate(
                    40,
                    (index) => Container(
                          color: index % 2 == 0
                              ? Colors.transparent
                              : backgroundColor,
                          height: 1.5,
                          width: 10,
                        ))),
          ),
        ),
      ],
    );
  }

  Widget flightDetails(title, result) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 12,
              color: lightBackgroundColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            result,
            style: const TextStyle(
              fontSize: 16,
              color: backgroundColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );
}
