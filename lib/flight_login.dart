import 'package:flight_ui/add_flight.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class FlightLogin extends StatelessWidget {
  const FlightLogin({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: SizedBox(
              height: size.height * 0.65,
              child: ListView(children: [
                Image.asset(
                  'assets/emirates_logo.png',
                  height: 80,
                  width: 150,
                  color: primaryColor,
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                SizedBox(
                  height: size.height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          textForms(size, Icons.alternate_email, 'Email'),
                          const SizedBox(
                            height: 20,
                          ),
                          textForms(size, Icons.lock, 'Password'),
                        ],
                      ),
                      const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 17,
                          color: lightWhiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const AddFlight()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                            child: const Text(
                              'Log in',
                              style: TextStyle(
                                color: backgroundColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ),
                      RichText(
                        text: const TextSpan(
                            text: 'Not a member ? ',
                            style: TextStyle(
                              color: lightWhiteColor,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Join now',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: primaryColor,
                                  ))
                            ]),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget textForms(size, icon, hintText) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      width: 1.5,
                      color: lightWhiteColor,
                    ),
                    right: BorderSide(
                      width: 1.5,
                      color: lightWhiteColor,
                    ))),
            child: Icon(
              icon,
              color: primaryColor,
            ),
          ),
          Container(
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.5,
                  color: lightWhiteColor,
                ),
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    color: lightWhiteColor,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  border: InputBorder.none),
            ),
          ),
        ],
      );
}
