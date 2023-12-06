import 'package:flutter/material.dart';
import 'package:roducate_air/screens/seat_selection.dart';

class ETicketPage extends StatelessWidget {
  const ETicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text('e-Ticket',
          style:TextStyle(color: Color(0xff141511),
              fontSize: 16, fontStyle: FontStyle.normal,
              fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(left: 24,right: 24, top: 16, bottom: 16),
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
                    // airline logo
                    SizedBox(
                      width: 81.594,
                      height: 50,
                        child:
                        Image.asset('assets/images/airline.png',
                        ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Garuda Indonesia',
                          style:TextStyle(color: Color(0xff141511),
                              fontSize: 16, fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                        Text('Economy',
                          style:TextStyle(color: Color(0xff8C8D89),
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
                const SizedBox(height: 10,),
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
                const SizedBox(height: 10,),

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

                //DIVIDER
                SizedBox(height: 15,),
                const Divider(height: 20, color: Color(0xffEEF0EB),),
                SizedBox(height: 15,),

                //name and booking code
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Name',
                      style:TextStyle(color: Color(0xffEE3D60),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                    Text('Booking Code',
                      style:TextStyle(color: Color(0xffEE3D60),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                  ],
                ),

                //user name and code
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cameron \nWilliamson',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 16, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                    Text('V13NS90',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 16, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(height: 15,),

                //class and seat
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Class',
                      style:TextStyle(color: Color(0xff8C8D89),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                    Text('seat',
                      style:TextStyle(color: Color(0xff8C8D89),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Economy',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 16, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                    Text('8D',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 16, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(height: 15,),

                //id number and airline
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ID number',
                      style:TextStyle(color: Color(0xff8C8D89),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                    Text('Airline',
                      style:TextStyle(color: Color(0xff8C8D89),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1289754724',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 16, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                    Text('Guruda Indonesia',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 16, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                  ],
                ),


                SizedBox(height: 15,),
                const Divider(height: 20, color: Color(0xffEEF0EB),),
                SizedBox(height: 15,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/barcode.png'),
                    ],),
                    SizedBox(height: 15,),
                    Text('EESBH21200001088',
                      style:TextStyle(color: Color(0xff141511),
                          fontSize: 14, fontStyle: FontStyle.normal,
                          fontFamily: 'General Sans', fontWeight: FontWeight.w500),)
                  ],
                ),


              ],
            ),
          ),
          //download button
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const SelectSeatPage()));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
              color: Colors.blue,
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: const Center(child: Text('Download e-Ticket',
                style:TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 14, fontStyle: FontStyle.normal,
                    fontFamily: 'General Sans', fontWeight: FontWeight.w600),),),
            ),
          )
        ],
      ),
    );
  }
}
