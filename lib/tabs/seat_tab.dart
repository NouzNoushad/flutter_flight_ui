import 'package:flight_ui/colors.dart';
import 'package:flutter/material.dart';

class SeatTab extends StatelessWidget {
  const SeatTab({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipPath(
            clipper: FlightDesign(),
            child: Container(
              color: const Color.fromARGB(255, 83, 119, 116),
              height: size.height * 0.8,
              width: 220,
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/emirates_logo.png',
                    height: 60,
                    width: 60,
                    color: primaryColor,
                  ),
                  Text(
                    'May 19, 8:25 AM'.toUpperCase(),
                    style: const TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Economy Class',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 13,
                    ),
                  ),
                  Container(
                    height: size.height * 0.45,
                    // color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 2 / 3),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  width: 1, color: lightBackgroundColor),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              seatDetails('DBC', 'Dobaca'),
              Column(
                children: const [
                  Icon(
                    Icons.flight_takeoff,
                    color: primaryColor,
                    size: 40,
                  ),
                  Text(
                    '1h 25m',
                    style: TextStyle(
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
              seatDetails('ADY', 'Almedy'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Flight No'.toUpperCase(),
                    style: const TextStyle(
                      color: lightWhiteColor,
                    ),
                  ),
                  const Text(
                    'KB76',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
              seatDetails('19', 'Seat'),
              SizedBox(
                height: 70,
                width: 80,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: backgroundColor,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget seatDetails(title, subTitle) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w300,
              color: primaryColor,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: whiteColor,
            ),
          ),
        ],
      );
}

class FlightDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double h = size.height;
    double w = size.width;

    path.moveTo(0, h / 2.5);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, h / 2.5);
    path.lineTo(w / 1.5, 50);
    path.quadraticBezierTo(w / 2.2, 20, w / 3.5, 50);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
