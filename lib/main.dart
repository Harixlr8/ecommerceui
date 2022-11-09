import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EcommerceHomePage(),
    ),
  );
}

class EcommerceHomePage extends StatelessWidget {
  const EcommerceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_alt_outlined,color: Colors.black,),
            label: 'Favorites'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined,color: Colors.black,),
            label: 'Messages'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined,color: Colors.black,),
            label: 'Account'
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Search for items..'),
                    filled: true,
                    fillColor: Color.fromARGB(255, 244, 239, 239),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    enabled: false,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 244, 239, 239),
                  shape: const CircleBorder(),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 0),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 244, 239, 239),
                  shape: const CircleBorder(),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.notification_add_outlined,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/blue.jpg'),
                ),
              ),
              height: 85,
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'A Summer Surprise',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      'Cashback upto 20%',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: const Color.fromARGB(255, 235, 173, 168),
                    child: const Center(
                        child: Icon(
                      Icons.flash_on_outlined,
                      color: Colors.redAccent,
                      size: 40,
                    )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: const Color.fromARGB(255, 235, 173, 168),
                    child: const Center(
                        child: Icon(
                      Icons.games_outlined,
                      color: Colors.redAccent,
                      size: 40,
                    )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: const Color.fromARGB(255, 235, 173, 168),
                    child: const Center(
                        child: Icon(
                      Icons.list_alt_outlined,
                      color: Colors.redAccent,
                      size: 40,
                    )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: const Color.fromARGB(255, 235, 173, 168),
                    child: const Center(
                        child: Icon(
                      Icons.card_giftcard_outlined,
                      color: Colors.redAccent,
                      size: 40,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  'Special Offer For you',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'See More',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/gadgets.jpg'),
                    ),
                  ),
                  child: Stack(children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Smart Gadgets',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 40, 0, 0),
                      child: Text(
                        'Variety of brands',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                ),
                SizedBox(width: 10),
                Container(
                  height: 100,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'assets/images/Screenshot 2022-11-08 191935.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  'Popular Product',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'See More',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                child: Row(
                  children: [
                     Image.asset('assets/images/joystick-design-template-0d27cd04c9dca58fa3516fde1a7250f4_screen.jpg'),
                     Image.asset('assets/images/ON.jpg'),
                     Image.asset('assets/images/teeees.jpg')
                     
                    
                  ],
                ),
              ),
            )
          


        ],
      ),
    );
  }
}
