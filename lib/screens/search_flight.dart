import 'package:flutter/material.dart';

// class SearchFlightPage extends StatelessWidget {
//   const SearchFlightPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       extendBody: true,
//       appBar: AppBar(
//         title: const Text(
//           'Flight',
//           style: TextStyle(
//               fontFamily: 'General Sans',
//               fontSize: 16,
//               color: Color(0xffFFFFFF),
//               fontStyle: FontStyle.normal,
//               fontWeight: FontWeight.w600),
//         ),
//         centerTitle: true,
//       ),
//       body: Stack(
//         children: [
//           //plane background image
//           SizedBox(
//             height: 150,
//             width: MediaQuery.of(context).size.width,
//             child: Image.asset('assets/images/plane'),
//           ),
//           //flight search container
//           Container(
//             margin: const EdgeInsets.only(left: 24, right: 24),
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     children: <Widget>[
//                       //take off and landing destination search box container
//                       Container(),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

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
          onPressed: () {},
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
              color: Colors.amber,
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
          Column(
            children: [
              //flight search container
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(
                    top: 130, left: 24, right: 24, bottom: 25),
                // color: Colors.blue,
                // height: 150,
                child: Column(
                  children: [
                    //take off and landing search box
                    Container(
                      color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          //take off
                          Row(
                            children: <Widget>[
                              Image.asset('assets/images/takeoffplaneicon.png'),
                              const Text('Jakatar (CGK)')
                            ],
                          ),
                          //divider and switcher
                          const Row(
                            children: <Widget>[
                              Divider(),
                            ],
                          ),
                          //landing
                          Row(
                            children: <Widget>[
                              Image.asset('assets/images/landingplaneicon.png'),
                              const Text('Jakatar (CGK)')
                            ],
                          )
                        ],
                      ),
                    )
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
                child: Row(
                  children: [
                    //history 1
                    Container(
                      margin: const EdgeInsets.only(
                          top: 130, left: 24, right: 24, bottom: 25),
                      color: Colors.blue,
                      height: 100,
                      width: 150,
                    ),
                    //history 2
                    Container(
                      margin: const EdgeInsets.only(
                          top: 130, left: 24, right: 24, bottom: 25),
                      color: Colors.blue,
                      height: 150,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
