import 'package:flutter/material.dart';
import 'package:roducate_air/screens/order_details.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text(
          'Select Seat',
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

            //user and flight info
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  border: Border.all(
                    color: const Color(0xff1C6AE4),
                    width: 2.0,
                  )),
              margin: const EdgeInsets.only(bottom: 24),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '1. Cameron Williamson',
                        style: TextStyle(
                            color: Color(0xff141511),
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w500),
                      ),
                      Image.asset(
                        'assets/images/success.png',
                        height: 60,
                        width: 60,
                      )
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

            //SEAT STATUS DESC
            Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Available seat
                  const SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Image.asset('assets/images/orangechair.png'),
                        Icon(
                          Icons.chair,
                          color: Color(0xffEEF0EB),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Available',
                          style: TextStyle(
                              color: Color(0xff141511),
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  // Selected seat
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/orangechair.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Selected',
                          style: TextStyle(
                              color: Color(0xff141511),
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  //filled seat
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/bluechair.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Filled',
                          style: TextStyle(
                              color: Color(0xff141511),
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // seat naming
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'A',
                              style: TextStyle(
                                  color: Color(0xff141511),
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'General Sans',
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 35,),
                            Text(
                              'B',
                              style: TextStyle(
                                  color: Color(0xff141511),
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'General Sans',
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 35,),
                            Text(
                              'C',
                              style: TextStyle(
                                  color: Color(0xff141511),
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'General Sans',
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // d to f
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'D',
                          style: TextStyle(
                              color: Color(0xff141511),
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 30,),
                        Text(
                          'E',
                          style: TextStyle(
                              color: Color(0xff141511),
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 35,),
                        Text(
                          'F',
                          style: TextStyle(
                              color: Color(0xff141511),
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //seat status
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 300,
                    width: 150,
                    child: ListView.builder(
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/bluechair.png'),
                                const SizedBox(width: 20,),
                                Image.asset('assets/images/orangechair.png'),
                                const SizedBox(width: 20,),const Icon(
                                  Icons.chair,
                                  color: Color(0xffEEF0EB),
                                ),
                              ],
                            ),
                          ],
                        );
                      }
                    ),
                  ),

                  SizedBox(
                    height: 300,
                    width: 150,
                    child: ListView.builder(
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/images/bluechair.png'),
                                  const SizedBox(width: 20,),
                                  Image.asset('assets/images/orangechair.png'),
                                  const SizedBox(width: 20,),const Icon(
                                    Icons.chair,
                                    color: Color(0xffEEF0EB),
                                  ),
                                ],
                              ),
                            ],
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),


            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const OrderDetails()));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                color: Colors.blue,
                height: 48,
                width: MediaQuery.of(context).size.width,
                child: const Center(child: Text('Continue',
                  style:TextStyle(color: Color(0xffFFFFFF),
                      fontSize: 14, fontStyle: FontStyle.normal,
                      fontFamily: 'General Sans', fontWeight: FontWeight.w600),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
