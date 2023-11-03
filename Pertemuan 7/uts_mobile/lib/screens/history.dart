import 'package:flutter/material.dart';

import '../main.dart';

class History extends StatelessWidget {
  const History({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Transaction History'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Done',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabView(
              text: 'All transaction is completed!',
              subText: 'Any pending transaction will appear in this page',
            ),
            TabView(
              text: 'Done',
              subText: 'Any done transaction will appear in this page',
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const Icon(Icons.qr_code_2_outlined),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavIcon(
                iconData: Icons.home_outlined,
                name: "Home",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              NavIcon(
                iconData: Icons.history,
                name: "History",
                onTap: () {
                  // Do something when the History tab is tapped
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        "Pay",
                        style: TextStyle(
                          color: const Color(0xFFFF0000),
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
      ),
    );
  }
}

class TabView extends StatelessWidget {
  final String text;
  final String? subText;

  const TabView({Key? key, required this.text, this.subText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: NetworkImage(
              'https://cdni.iconscout.com/illustration/premium/thumb/payment-with-swiping-machine-5624700-4685021.png',
              scale: 3,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          if (subText != null) const SizedBox(height: 8),
          Text(subText ?? ''),
        ],
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
              color: const Color.fromARGB(255, 255, 0, 0),
            ),
            Text(
              name,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
