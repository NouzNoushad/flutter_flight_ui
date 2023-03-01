import 'package:flight_ui/colors.dart';
import 'package:flight_ui/tabs/seat_tab.dart';
import 'package:flight_ui/tabs/ticket_tab.dart';
import 'package:flutter/material.dart';

class AddFlight extends StatefulWidget {
  const AddFlight({super.key});

  @override
  State<AddFlight> createState() => _AddFlightState();
}

class _AddFlightState extends State<AddFlight>
    with SingleTickerProviderStateMixin {
  late final TabController _controller = TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close,
                        color: backgroundColor,
                        size: 30,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Add flight',
                style: TextStyle(
                  fontSize: 25,
                  color: backgroundColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: size.height * 0.85,
              decoration: const BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Column(children: [
                TabBar(
                    controller: _controller,
                    indicatorColor: primaryColor,
                    labelPadding: const EdgeInsets.all(10),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: primaryColor,
                    unselectedLabelColor: lightWhiteColor,
                    tabs: ['Ticket', 'Seat', 'Route', 'Flight'].map((flight) {
                      return Text(
                        flight,
                        style:
                            const TextStyle(fontSize: 15, letterSpacing: 0.5),
                      );
                    }).toList()),
                Expanded(
                  child: TabBarView(controller: _controller, children: [
                    const TicketTab(),
                    const SeatTab(),
                    Container(),
                    Container(),
                  ]),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
