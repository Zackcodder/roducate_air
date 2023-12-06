import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.blue.shade800,toolbarHeight: 14,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                  child:Image.asset('assets/images/background.png',fit: BoxFit.fitWidth,),),
              Container(
                margin: const EdgeInsets.only(left: 24,right: 24),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //search box
                    Container(
                      margin: const EdgeInsets.only(top: 38, bottom: 24),
                      color: Colors.white,
                      height: 45.0,
                      child: const TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 2),
                            hintText: 'Search here...',
                            hintStyle: TextStyle(fontSize: 14, fontStyle: FontStyle.normal, fontFamily: 'General Sans', fontWeight: FontWeight.w400),
                            prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.none,width: 1.0)),
                        ),
                      ),
                    ),
                    //information box
                    Container(
                      padding: const EdgeInsets.all(12),color:Colors.white,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //user name
                          const Text('Hi, Cameron Willamson',
                            style:TextStyle(color: Color(0xff141511),
                              fontSize: 14, fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans', fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 15,),
                          //  user bonus
                          Row(children: [
                            //my point
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/coin.png'),
                                  const SizedBox(width: 5,),
                                  const Text('My points',style:TextStyle(color: Color(0xff8C8D89),
                                      fontSize: 12, fontStyle: FontStyle.normal,
                                      fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                                ],
                              ),
                            ),
                            //my balance
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/dollar.png'),
                                  const SizedBox(width: 5,),
                                  const Text('My Balance',style:TextStyle(color: Color(0xff8C8D89),
                                      fontSize: 12, fontStyle: FontStyle.normal,
                                      fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                                ],
                              ),
                            ),
                            //paylater
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/wallet.png'),
                                  const SizedBox(width: 5,),
                                  const Text('Paylater',style:TextStyle(color: Color(0xff8C8D89),
                                      fontSize: 12, fontStyle: FontStyle.normal,
                                      fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                                ],
                              ),
                            ),
                          ],
                          ),
                          //amount and others
                          const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            //amount
                            SizedBox(
                              child: Text('\$782.01',style:TextStyle(color: Color(0xff141511),
                                  fontSize: 14, fontStyle: FontStyle.normal,
                                  fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                            ),
                            //connect now
                            SizedBox(
                              child: Text('Connect now!',style:TextStyle(color: Color(0xff1C6AE4),
                                  fontSize: 14, fontStyle: FontStyle.normal,
                                  fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                            ),
                              //Activate now
                              SizedBox(
                                child: Text('Activate now!',style:TextStyle(color: Color(0xff1C6AE4),
                                    fontSize: 14, fontStyle: FontStyle.normal,
                                    fontFamily: 'General Sans', fontWeight: FontWeight.w400),),
                              ),
                          ],
                          ),
                          const SizedBox(height: 24,),
                          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                            children: [
                              //plane
                              SizedBox(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                    child: Image.asset('assets/images/planeicon.png', height: 20, width: 20,),
                                    backgroundColor: const Color(0xff1C6AE4), radius: 20,),
                                    const Text("Flight",style:TextStyle(color: Color(0xff141511),
                                        fontSize: 14, fontStyle: FontStyle.normal,
                                        fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                                  ],
                                ),
                              ),
        
                              //train
                              SizedBox(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset('assets/images/train.png', height: 20, width: 20,),
                                      backgroundColor: const Color(0xffFF7A1A), radius: 20,),
                                    const Text("Train",style:TextStyle(color: Color(0xff141511),
                                        fontSize: 14, fontStyle: FontStyle.normal,
                                        fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                                  ],
                                ),
                              ),
        
                              //bus
                              SizedBox(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset('assets/images/bus.png', height: 20, width: 20,),
                                      backgroundColor: const Color(0xff7E1DFA), radius: 20,),
                                    const Text("Bus",style:TextStyle(color: Color(0xff141511),
                                        fontSize: 14, fontStyle: FontStyle.normal,
                                        fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                                  ],
                                ),
                              ),
        
                              //hotel
                              SizedBox(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset('assets/images/hotel.png', height: 20, width: 20,),
                                      backgroundColor: const Color(0xff1DC5FA), radius: 20,),
                                    const Text("Hotel",style:TextStyle(color: Color(0xff141511),
                                        fontSize: 14, fontStyle: FontStyle.normal,
                                        fontFamily: 'General Sans', fontWeight: FontWeight.w400),)
                                  ],
                                ),
                              ),
                            ],),
                          //train
        
                        ],
                      ),),
                    //activate pay later
                    Container(
                      margin: const EdgeInsets.only(top: 12, bottom: 20),
                      padding: const EdgeInsets.all(12),
                      color: const Color(0xffFAFAFA),
                    child:  Column(children: [
                      //activate later header
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Activate Paylater Now!',
                          style:TextStyle(color: Color(0xff141511),
                              fontSize: 16, fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
                          Icon(Icons.close),],),
        
                      //pay later desc
                      Container(
                        margin: const EdgeInsets.only(top: 12),
                        color: Colors.white,
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Activate paylater nown and \n get 20% cashback for \n booking airplane tickets!',
                          style:TextStyle(color: Color(0xff141511),
                              fontSize: 14, fontStyle: FontStyle.normal,
                              fontFamily: 'General Sans', fontWeight: FontWeight.w500),),
        
                            Container(
                              padding: const EdgeInsets.all(4),
                              color: const Color(0xff1C6AE4),
                            child: const Center(
                              child: Text('Activate Now',
                              style:TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 12, 
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'General Sans',
                                  fontWeight: FontWeight.w500),
                            ),
                            ),
                            )
                          ],),)
                    ],),),
                    // flight for you
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Flight Options For You'),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          child: const Icon(Icons.arrow_forward, color:Colors.blue, size: 12,),
                        )
                      ],),
                    //places gallery
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 25),
                        child: Row(
                          children: [
                            //place 1
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.grey.withOpacity(0.2), width: 1.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/place.png'),
                                  SizedBox(height: 10,),
                                  const Text('Jakarta - Yogyakarta'),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/airline3.png', height: 20,width: 20,),
                                      const Text('Lion Air')
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            ),
                            //place 2
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey.withOpacity(0.2), width: 1.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/place.png'),
                                  SizedBox(height: 10,),
                                  const Text('Jakarta - Solo'),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/airline3.png', height: 20,width: 20,),
                                      const Text('Lion Air')
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            ),
                            //place 3
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey.withOpacity(0.2), width: 1.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/place.png'),
                                  SizedBox(height: 10,),
                                  const Text('Jakarta'),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/airline3.png', height: 20,width: 20,),
                                      const Text('Lion Air')
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]
                  ,),
              )
            ],),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Color(0xff8C8D89),

          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/home.png'), label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/promo.png'), label: "Promo"),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/clipboard.png'), label: "My Trip"),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/envelope.png'), label: "Inbox"),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/userwhite.png'), label: "Account"),
          ],
        ),
      ),
    );
  }
}
