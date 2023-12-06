import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text(
          'Order Details',
          style: TextStyle(
              color: Color(0xff141511),
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontFamily: 'General Sans',
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: [
            //count down for order
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              color: const Color(0xffFDE6EB).withOpacity(0.3),
              width: MediaQuery.of(context).size.width,
              height: 48,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      'The remaining time of the order ',
                      style: TextStyle(
                          color: Color(0xffEE3D60),
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans',
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '00:07:20',
                      style: TextStyle(
                          color: Color(0xffEE3D60),
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans',
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            //your trip
            const SizedBox(
              child: Text(
                'Your Trip',
                style: TextStyle(
                    fontFamily: 'General Sans',
                    fontSize: 16,
                    // color: Color(0xffFFFFFF),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
            ),

            //flight details
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(top: 16, bottom: 25),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                width: 2.0,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //AIRLINE AND COST
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/airline.png'),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$779.58',
                            style: TextStyle(
                                color: Color(0xff1C6AE4),
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans',
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '5 left',
                            style: TextStyle(
                                color: Color(0xffEE3D60),
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans',
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),

                  //DIVIDER
                  const Divider(
                    height: 20,
                    color: Color(0xffEEF0EB),
                  ),
                  //flight details
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jakatar(CGK)',
                        style: TextStyle(
                            color: Color(0xffEE3D60),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Yogykarta(YIA)',
                        style: TextStyle(
                            color: Color(0xffEE3D60),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //time of flight
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '08:00 AM',
                        style: TextStyle(
                            color: Color(0xff141511),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      Container(
                        height: 2,
                        color: Colors.blue,
                        width: 50,
                      ),
                      Image.asset('assets/images/onflightplaneicon.png'),
                      Container(
                        height: 2,
                        color: Colors.blue,
                        width: 50,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      const Text(
                        '09:00 AM',
                        style: TextStyle(
                            color: Color(0xff141511),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //dates of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '24 Feb 2023',
                        style: TextStyle(
                            color: Color(0xffEE3D60),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '24 Feb 2023',
                        style: TextStyle(
                            color: Color(0xffEE3D60),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),

                  //duration of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Duration 1h 15m',
                        style: TextStyle(
                            color: Color(0xffEE3D60),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //passenger List
            const SizedBox(
              child: Text(
                'Passenger List',
                style: TextStyle(
                    fontFamily: 'General Sans',
                    fontSize: 16,
                    // color: Color(0xffFFFFFF),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  border: Border.all(
                    color: const Color(0xff8C8D89).withOpacity(0.3),
                    width: 2.0,
                  )),
              margin: const EdgeInsets.only(bottom: 24, top: 16),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Cameron Williamson',
                        style: TextStyle(
                            color: Color(0xff141511),
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        color: const Color(0xff1C6AE4),
                        child: const Center(
                          child: Text(
                            'Change Seat',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //class
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Economy',
                        style: TextStyle(
                            color: Color(0xff8C8D89),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        ' . 8D',
                        style: TextStyle(
                            color: Color(0xff8C8D89),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //protect your trip
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Protect Your Trip',
                    style: TextStyle(
                        fontFamily: 'General Sans',
                        fontSize: 16,
                        // color: Color(0xffFFFFFF),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '\$5 per passenger',
                    style: TextStyle(
                        fontFamily: 'General Sans',
                        fontSize: 16,
                        color: Color(0xff1C6AE4),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  border: Border.all(
                    color: const Color(0xff8C8D89).withOpacity(0.3),
                    width: 2.0,
                  )),
              margin: const EdgeInsets.only(bottom: 24, top: 16),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/shield.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Extra prortection',
                            style: TextStyle(
                                color: Color(0xff141511),
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans',
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'protect your trip to get insurance in the event of \nan accident. Accident compensation upto \$600',
                            style: TextStyle(
                                color: Color(0xff8C8D89),
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
