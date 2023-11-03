import 'package:flutter/material.dart'; //tes
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uts_mobile/screens/history.dart'; //tes

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

final List<String> imgList = [
  'https://static.republika.co.id/uploads/images/inpicture_slide/pt-bank-negara-indonesia-persero-tbk-atau-bni-memberikan_230705104532-614.jpg',
  'https://lelogama.go-jek.com/post_featured_image/promo-hangout-bandung-1png.png',
  'https://web.pln.co.id/statics/uploads/2023/05/WhatsApp-Image-2023-05-03-at-10.06.01.jpeg',
  'https://tri.co.id/image/files/20220208TurunanMochanECommerceekstraKuota5GBWebsiteDekstopIND.jpg',
  'https://www.online-pajak.com/wp-content/uploads/2023/09/promo-page_New-Visa.png',
  'https://bankmega.com/media/filer_public/ba/d6/bad689bb-68cd-4cf3-8650-15e0734bb6f7/visacontactless-bmnew-01.jpg'
];

final List<Widget> imageSliders = imgList
    .map((item) => FractionallySizedBox(
          widthFactor: 1.0,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              child: Image.network(item, fit: BoxFit.cover),
            ),
          ),
        ))
    .toList();

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/04/22/03/13/city-2250533_1280.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png'),
                        width: 40,
                      ),
                    ),
                    Spacer(),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: EdgeInsets.all(10),
                        child: CustomIcon(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/128/2089/2089363.png',
                          width: 24,
                          height: 24,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0)),
                      padding: EdgeInsets.all(10),
                      child: CustomIcon(
                        imageUrl:
                            'https://cdn-icons-png.flaticon.com/128/707/707680.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 25),
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://media.rainpos.com/Checker/B8038-RED.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Hi, Muhammad Ega Rama Fernanda',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5.0),
                        padding: EdgeInsets.all(10.0),
                        width: 150,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Balance',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp. 10.000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5.0),
                        padding: EdgeInsets.all(10.0),
                        width: 150,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bonus Balance',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(
                      Icons.add_card_outlined,
                      size: 25,
                    ),
                    Text("TopUp"),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(
                      Icons.money,
                      size: 25,
                    ),
                    Text(
                      "Send Money",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.airplane_ticket_outlined),
                    Text("Ticket Code"),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.grid_view),
                    Text("See All"),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 25),
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.add_card_outlined),
                    Text("Pulsa"),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.electrical_services),
                    Text("Electricity"),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.local_hospital),
                    Text("BPJS"),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.games),
                    Text("mgames"),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.wifi_tethering),
                    Text("Internet"),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.water_damage_outlined),
                    Text("PDAM"),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.account_balance_wallet_outlined),
                    Text(
                      "Kartu Elektronik",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                Container(
                  width: 80,
                  child: Column(children: [
                    Icon(Icons.more_horiz),
                    Text("More"),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3, left: 20, right: 20, bottom: 10),
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 150.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enlargeFactor: 0.2,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000)),
              items: imageSliders,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const Icon(Icons.qr_code_2_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            NavIcon(
              iconData: Icons.home_outlined,
              name: "Home",
              onTap: () {},
            ),
            NavIcon(
              iconData: Icons.history,
              name: "History",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => History(),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            NavIcon(
              iconData: Icons.inbox_outlined,
              name: "Inbox",
            ),
            NavIcon(
              iconData: Icons.account_circle_outlined,
              name: "Account",
            ),
          ],
        ),
      ),
    );
  }
}

class NavIcon extends StatelessWidget {
  final IconData iconData;
  final String name;
  final void Function()? onTap;

  const NavIcon({
    super.key,
    required this.iconData,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: Color.fromARGB(255, 255, 5, 5),
            ),
            Text(
              name,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 5, 5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  CustomIcon({
    required this.imageUrl,
    this.width = 30,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap event for the custom icon here
      },
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
      ),
    );
  }
}
