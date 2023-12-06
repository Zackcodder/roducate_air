import 'package:flutter/material.dart';
import 'package:roducate_air/screens/search_details.dart';
class SearchFlightPage extends StatelessWidget {
  const SearchFlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Flight',
          style: TextStyle(
              fontFamily: 'General Sans',
              fontSize: 16,
              color: Color(0xffFFFFFF),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
      body: Stack(
        children: [
          //plane background image
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/plane.png',
                ),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft:
                    Radius.circular(16.0), // Adjust the radius as needed
                bottomRight:
                    Radius.circular(16.0), // Adjust the radius as needed
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
            ),
          ),

          SingleChildScrollView(
            child: Column(
              children: [
                //flight search container
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(
                      top: 130, left: 24, right: 24, bottom: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    border:
                    Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                  ),
                  child: Column(
                    children: [
                      //take off and landing search box
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            //take off
                            Row(
                              children: <Widget>[
                                Image.asset('assets/images/takeoffplaneicon.png'),
                                const SizedBox(width: 10,),
                                const Text('Jakatar (CGK)')
                              ],
                            ),
                            const SizedBox(height: 5,),
                            //divider and switcher
                             Row(
                              children: <Widget>[
                                Container(
                                  color: const Color(0xffFAFAFA),
                                  height: 1,
                                  width: 250,
                                ),
                                const CircleAvatar(
                                  backgroundColor: Color(0xff1C6AE4),
                                  child: Icon(Icons.connecting_airports, color: Color(0xffFFFFFF),),
                                )
                              ],
                            ),
                            const SizedBox(height: 5,),
                            //landing
                            Row(
                              children: <Widget>[
                                Image.asset('assets/images/landingplaneicon.png'),
                                const SizedBox(width: 10,),
                                const Text('Jakatar (CGK)')
                              ],
                            )
                          ],
                        ),
                      ),
                      //date and calender
                      Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.only(top: 16),
                        decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [

                                  Image.asset('assets/images/calendar.png'),
                                  const SizedBox(width: 10,),
                                  const Text('Fri, 24 Feb')
                                ],
                              ),
                            ),
                            //toggle
                            Container(
                              child: const Row(
                                children: [
                                  Text('Round-trip'),
                                  SizedBox(width: 10,),
                                  Icon(Icons.toggle_off_outlined, color: Colors.blue,),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // passenger and class
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //passenger
                          Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                //passenger number
                                Container(
                                  child: Row(
                                    children: [

                                      Image.asset('assets/images/user.png'),
                                      const SizedBox(width: 10,),
                                      const Text('1 Passenger')
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          //class
                          Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                            ),
                            child: Row(
                              children: [

                                Image.asset('assets/images/blueoutlinechair.png'),
                                const SizedBox(width: 10,),
                                const Text('Economy')
                              ],
                            ),
                          ),


                        ],
                      ),
                      //search button
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchDetailsPage()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border:
                            Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                          ),
                          child: const Center(child: Text('Search')),
                        ),
                      ),
                    ],
                  ),
                ),
                // your last search
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Last Search',
                        style: TextStyle(
                            fontFamily: 'General Sans',
                            fontSize: 16,
                            // color: Color(0xffFFFFFF),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Clear All',
                        style: TextStyle(
                            fontFamily: 'General Sans',
                            fontSize: 16,
                            // color: Color(0xffFFFFFF),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                //flight search history
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //history 1
                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                        margin: const EdgeInsets.only(
                            top: 16, left: 24, right: 16, bottom: 25),
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          border:
                          Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //country
                            Row(
                              children: [
                              Text('Jakarta (CGK)'),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward, size: 20,weight: 10,),
                                SizedBox(width: 10,),
                              Text('Bali(DPS)'),
                                SizedBox(width: 20,),
                              Icon(Icons.arrow_right,size: 30, weight: 10,)
                            ],
                            ),
                            SizedBox(height: 16,),
                            // date details
                            Row(
                              children: [
                                Text('24 Feb 2023'),
                                Text(' . 1 Passenger'),
                                Text(' . Economy')
                              ],
                            ),
                          ],
                        ),
                      ),
                      //history 2
                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                        margin: const EdgeInsets.only(
                            top: 16, left: 16, right: 16, bottom: 25),
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          border:
                          Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //country
                            Row(
                              children: [
                                Text('Jakarta (CGK)'),
                                SizedBox(width: 10,),
                                Icon(Icons.arrow_forward, size: 20,weight: 10,),
                                SizedBox(width: 10,),
                                Text('Bali(DPS)'),
                                SizedBox(width: 20,),
                                Icon(Icons.arrow_right,size: 30, weight: 10,)
                              ],
                            ),
                            SizedBox(height: 16,),
                            // date details
                            Row(
                              children: [
                                Text('24 Feb 2023'),
                                Text(' . 1 Passenger'),
                                Text(' . Economy')
                              ],
                            ),
                          ],
                        ),
                      ),
                      //history 3
                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                        margin: const EdgeInsets.only(
                            top: 16, left: 16, right: 16, bottom: 25),
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          border:
                          Border.all(color: Colors.grey.withOpacity(0.2), width: 2.0),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //country
                            Row(
                              children: [
                                Text('Jakarta (CGK)'),
                                SizedBox(width: 10,),
                                Icon(Icons.arrow_forward, size: 20,weight: 10,),
                                SizedBox(width: 10,),
                                Text('Bali(DPS)'),
                                SizedBox(width: 20,),
                                Icon(Icons.arrow_right,size: 30, weight: 10,)
                              ],
                            ),
                            SizedBox(height: 16,),
                            // date details
                            Row(
                              children: [
                                Text('24 Feb 2023'),
                                Text(' . 1 Passenger'),
                                Text(' . Economy')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // get attractive promo
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Get Attractive Promo!',
                        style: TextStyle(
                            fontFamily: 'General Sans',
                            fontSize: 16,
                            // color: Color(0xffFFFFFF),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),

                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: const Icon(Icons.arrow_forward, color:Colors.blue, size: 12,),
                      )
                    ],
                  ),
                ),

                //promo
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      children: [
                        //history 1
                        Container(
                          width:300,
                          margin: const EdgeInsets.only(
                              top: 16, right: 16, bottom: 25),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/plane.png',
                              ),
                            ),
                          ),
                          child: Container(
                            width: 300,
                            padding: const EdgeInsets.all(10),
                            color: Colors.black.withOpacity(0.3),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16,),
                                Text('Discount',
                                  style:TextStyle(color: Color(0xffFFFFFF),
                                      fontSize: 16, fontStyle: FontStyle.normal,
                                      fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                                SizedBox(width: 10,),
                                Text('30%',
                                  style:TextStyle(color: Color(0xffFFFFFF),
                                      fontSize: 30, fontStyle: FontStyle.normal,
                                      fontFamily: 'General Sans', fontWeight: FontWeight.w600),
                                ),
                                //country
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('for new users',
                                      style:TextStyle(color: Color(0xffFFFFFF),
                                          fontSize: 14, fontStyle: FontStyle.normal,
                                          fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
                                    SizedBox(width: 10,),
                                    Text('Terms and condition apply',
                                      style:TextStyle(color: Color(0xffFFFFFF),
                                          fontSize: 12, fontStyle: FontStyle.normal,
                                          fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                SizedBox(height: 16,),
                              ],
                            ),
                          ),
                        ),
                        //history 2
                        Container(
                          width:300,
                          margin: const EdgeInsets.only(
                              top: 16, right: 16, bottom: 25),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/plane.png',
                              ),
                            ),
                          ),
                          child: Container(
                            width: 300,
                            padding: const EdgeInsets.all(10),
                            color: Colors.black.withOpacity(0.3),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16,),
                                Text('Discount',
                                  style:TextStyle(color: Color(0xffFFFFFF),
                                      fontSize: 16, fontStyle: FontStyle.normal,
                                      fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                                SizedBox(width: 10,),
                                Text('50%',
                                  style:TextStyle(color: Color(0xffFFFFFF),
                                      fontSize: 30, fontStyle: FontStyle.normal,
                                      fontFamily: 'General Sans', fontWeight: FontWeight.w600),
                                ),
                                //country
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('for new users',
                                      style:TextStyle(color: Color(0xffFFFFFF),
                                          fontSize: 14, fontStyle: FontStyle.normal,
                                          fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
                                    SizedBox(width: 10,),
                                    Text('Terms and condition apply',
                                      style:TextStyle(color: Color(0xffFFFFFF),
                                          fontSize: 12, fontStyle: FontStyle.normal,
                                          fontFamily: 'General Sans', fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                SizedBox(height: 16,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
