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
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
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
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(right: 20.0),
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToIhy4KyY-ALuwCR9Z3_zCTW--fU_3agJjOItWx2hLBA&s'),
                    width: 36,
                    height: 36,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 36, // Set the height of the Icon
                      child: Icon(
                        Icons.airplane_ticket,
                        size: 36,
                      ),
                    ),
                    Container(
                      width: 36, // Set the width of the Icon
                      height: 36, // Set the height of the Icon
                      child: Icon(
                        Icons.heart_broken,
                        size: 36,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
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
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
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
                                  Icon(Icons.arrow_forward),
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.all(10.0),
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
                      Icon(Icons.airplane_ticket_outlined),
                      Text("See All"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
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
                      Icon(Icons.money),
                      Text("Electricity"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("BPJS"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("mgames"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("Internet"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.money),
                      Text("PDAM"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text(
                        "Kartu Elektronik",
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("More"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("TopUp"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.money),
                      Text("Send Money"),
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
                      Icon(Icons.airplane_ticket_outlined),
                      Text("See All"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 100.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enlargeFactor: 0.2,
                ),
                items: imageSliders,
              ),
            ),
          ]),
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
                        color: Colors.grey,
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
              color: Colors.grey,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
