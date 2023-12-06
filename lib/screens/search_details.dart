import 'package:flutter/material.dart';
import 'package:roducate_air/screens/e_ticket.dart';

class SearchDetailsPage extends StatelessWidget {
  const SearchDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: ListView(
        children: [
          //header
          Container(
            margin: const EdgeInsets.only(top: 30),
            color: const Color(0xffFFFFFF),
            width: MediaQuery.of(context).size.width,
            height: 100,
            child:  Column(
              children: [
                //location desc
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 25,),
                    GestureDetector(
                      onTap: (){Navigator.pop(context);},
                        child: const Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
                    const SizedBox(width: 25,),
                    const Text('Jakatar(CGK)',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 16, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                    const SizedBox(width: 15,),
                    const Icon(Icons.arrow_forward, color: Color(0xff141511), size: 16,),
                    const SizedBox(width: 15,),
                    const Text('Yogyakarta (YIA)',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 16, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w500),)
                  ],
                ),
                const SizedBox(height: 15,),

                //numb er of passenger and class
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 25,),
                    Text('1 Passenger',
                      style:TextStyle(color: Color(0xff8C8D89),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                    SizedBox(width: 15,),
                    Text(' . Economic',
                      style:TextStyle(color: Color(0xff8C8D89),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                  ],
                ),

              ],
            ),
          ),

          //DATE SELECTOR
          Container(
            margin: const EdgeInsets.only(top: 24, left: 17, bottom: 35),
            child: const SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Fri, 24 Feb',
                    style:TextStyle(color: Color(0xff1C6AE4),
                        fontSize: 14, fontStyle: FontStyle.normal,
                        fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                  Text('Fri, 25 Feb',
                    style:TextStyle(color: Color(0xff8C8D89),
                        fontSize: 14, fontStyle: FontStyle.normal,
                        fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                  Text('Fri, 26 Feb',
                    style:TextStyle(color: Color(0xff8C8D89),
                        fontSize: 14, fontStyle: FontStyle.normal,
                        fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                  Text('Fri, 27 Feb',
                    style:TextStyle(color: Color(0xff8C8D89),
                        fontSize: 14, fontStyle: FontStyle.normal,
                        fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                  Text('Fri, 28 Feb',
                    style:TextStyle(color: Color(0xff8C8D89),
                        fontSize: 14, fontStyle: FontStyle.normal,
                        fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                ],
              ),
            ),
          ),

          //Airline list 1
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ETicketPage()));
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(left: 24,right: 24),
              decoration: BoxDecoration(
                border:
                Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2.0,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //AIRLINE AND COST
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/airline3.png'),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$779.58',
                            style:TextStyle(color: Color(0xff1C6AE4),
                                fontSize: 16, fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
                          Text('5 left',
                            style:TextStyle(color: Color(0xffEE3D60),
                                fontSize: 14, fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                        ],
                      )
                    ],
                  ),

                  //DIVIDER
                  const Divider(height: 20, color: Color(0xffEEF0EB),),
                  //flight details
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jakatar(CGK)',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      Text('Yogykarta(YIA)',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  //time of flight
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('08:00 AM',
                        style:TextStyle(color: Color(0xff141511),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                       Container(height: 2, color: Colors.blue, width: 50,),
                      Image.asset('assets/images/onflightplaneicon.png'),
                      Container(height: 2, color: Colors.blue, width: 50,),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      const Text('09:00 AM',
                        style:TextStyle(color: Color(0xff141511),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 10,),

                  //dates of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('24 Feb 2023',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      Text('24 Feb 2023',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),

                  //duration of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Duration 1h 15m',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Airline list 2
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ETicketPage()));
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(left: 24,right: 24, top: 16),
              decoration: BoxDecoration(
                  border:
                  Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2.0,
                  )
              ),
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
                          Text('\$475.22',
                            style:TextStyle(color: Color(0xff1C6AE4),
                                fontSize: 16, fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
                          Text('Available',
                            style:TextStyle(color: Color(0xffEE3D60),
                                fontSize: 14, fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                        ],
                      )
                    ],
                  ),

                  //DIVIDER
                  const Divider(height: 20, color: Color(0xffEEF0EB),),
                  //flight details
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jakatar(CGK)',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      Text('Yogykarta(YIA)',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  //time of flight
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('12:00 PM',
                        style:TextStyle(color: Color(0xff141511),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      Container(height: 2, color: Colors.blue, width: 50,),
                      Image.asset('assets/images/onflightplaneicon.png'),
                      Container(height: 2, color: Colors.blue, width: 50,),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      const Text('01:15 PM',
                        style:TextStyle(color: Color(0xff141511),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 10,),

                  //dates of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('24 Feb 2023',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      Text('24 Feb 2023',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),

                  //duration of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Duration 1h 15m',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Airline list 3
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ETicketPage()));
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(left: 24,right: 24, top: 16),
              decoration: BoxDecoration(
                  border:
                  Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2.0,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //AIRLINE AND COST
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/airline1.png'),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$576.28',
                            style:TextStyle(color: Color(0xff1C6AE4),
                                fontSize: 16, fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
                          Text('12 left',
                            style:TextStyle(color: Color(0xffEE3D60),
                                fontSize: 14, fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                        ],
                      )
                    ],
                  ),

                  //DIVIDER
                  const Divider(height: 20, color: Color(0xffEEF0EB),),
                  //flight details
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jakatar(CGK)',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      Text('Yogykarta(YIA)',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  //time of flight
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('08:00 AM',
                        style:TextStyle(color: Color(0xff141511),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      Container(height: 2, color: Colors.blue, width: 50,),
                      Image.asset('assets/images/onflightplaneicon.png'),
                      Container(height: 2, color: Colors.blue, width: 50,),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      const Text('09:00 AM',
                        style:TextStyle(color: Color(0xff141511),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 10,),

                  //dates of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('24 Feb 2023',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      Text('24 Feb 2023',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),

                  //duration of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Duration 1h 15m',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Airline list 4
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const ETicketPage()));
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(left: 24,right: 24, top: 16, bottom: 25),
              decoration: BoxDecoration(
                  border:
                  Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2.0,
                  )
              ),
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
                          Text('\$779.58',
                            style:TextStyle(color: Color(0xff1C6AE4),
                                fontSize: 16, fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
                          Text('5 left',
                            style:TextStyle(color: Color(0xffEE3D60),
                                fontSize: 14, fontStyle: FontStyle.normal,
                                fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                        ],
                      )
                    ],
                  ),

                  //DIVIDER
                  const Divider(height: 20, color: Color(0xffEEF0EB),),
                  //flight details
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jakatar(CGK)',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      Text('Yogykarta(YIA)',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  //time of flight
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('08:00 AM',
                        style:TextStyle(color: Color(0xff141511),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      Container(height: 2, color: Colors.blue, width: 50,),
                      Image.asset('assets/images/onflightplaneicon.png'),
                      Container(height: 2, color: Colors.blue, width: 50,),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 2,
                      ),
                      const Text('09:00 AM',
                        style:TextStyle(color: Color(0xff141511),
                            fontSize: 14, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 10,),

                  //dates of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('24 Feb 2023',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                      Text('24 Feb 2023',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                    ],
                  ),

                  //duration of flight
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Duration 1h 15m',
                        style:TextStyle(color: Color(0xffEE3D60),
                            fontSize: 12, fontStyle: FontStyle.normal,
                            fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
