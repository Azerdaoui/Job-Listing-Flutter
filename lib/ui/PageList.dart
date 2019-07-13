import 'package:flutter/material.dart';

class PageList extends StatefulWidget {
  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.square(60),
        child: AppBar(
          elevation: 7,
          backgroundColor: Color.fromRGBO(248,246,249, 1),
          title: Text('13 Jobs found !', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500)),
          actions: <Widget>[
            IconButton(
              alignment: Alignment.centerLeft,
              focusColor: Colors.red,
              icon: Icon(Icons.search, color: Colors.black, size: 32),
              onPressed: () {},
            ),
          ],
        ),        
      ),
      body: body(),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}

Container body(){
  return Container(
    color: Colors.white,
    child: ListView(
      children: <Widget>[
        jobCardGoogle('Full stack Developer', 'Google', 'Paris', 'images/google.png'),
        jobCardAirBnb('Frontend Enginner', 'Airbnb', 'Fès', 'images/airbnb.png'),
        jobCardMailChimp('Backend Developper', 'MailChimp', 'New York', 'images/mailchimp.png'),
        jobCardFacebook('Reactjs Developer', 'Facebook', 'California', 'images/facebook.png'),
      ],
    ),
  );
}

BottomNavigationBar bottomNavigation(){
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.settings, size: 35),
        title: Text('Settings', style: TextStyle(fontSize: 18)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.business_center, size: 35),
        title: Text('Jobs', style: TextStyle(fontSize: 18)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline, size: 35),
        title: Text('Profile', style: TextStyle(fontSize: 18)),
      ),
    ],
    currentIndex: 1,
    // selectedItemColor: Color.fromRGBO(19,56,128, 1),
    // onTap: _onItemTapped,
  );
}

Card jobCardGoogle (String title, String corporate, String city, String photo) {
  return Card(
    elevation: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(15),
          title: Text(corporate, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          subtitle: Text('$title - $city', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          trailing: Image.asset(photo, width: 40),
        ),
        Wrap(
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          alignment: WrapAlignment.start,
          spacing: 5,
          children: <Widget>[
            Chip(
              label: Text('Java', style: TextStyle(color: Color.fromRGBO(99,61,192, 1))),
              backgroundColor: Color.fromRGBO(224,213,255, 1),
            ),
            Chip(
              label: Text('Vuejs', style: TextStyle(color: Color.fromRGBO(70,155,39, 1))),
              backgroundColor: Color.fromRGBO(206,255,188, 1),
            ),
            Chip(
              label: Text('Spring boot', style: TextStyle(color: Color.fromRGBO(43,130,219, 1))),
              backgroundColor: Color.fromRGBO(223,244,255, 1),
            ),
          ],
        )
      ],
    )
  );
}
Card jobCardAirBnb (String title, String corporate, String city, String photo) {
  return Card(
    elevation: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(15),
          title: Text(corporate, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          subtitle: Text('$title - $city', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          trailing: Image.asset(photo, width: 40),
        ),
        Wrap(
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          alignment: WrapAlignment.start,
          spacing: 5,
          children: <Widget>[
            Chip(
              label: Text('JavaScript', style: TextStyle(color: Colors.red)),
              backgroundColor: Color.fromRGBO(254,221,222, 1),
            ),
            Chip(
              label: Text('Reactjs', style: TextStyle(color: Color.fromRGBO(43,130,219, 1))),
              backgroundColor: Color.fromRGBO(223,244,255, 1),
            ),
          ],
        )
      ],
    )
  );
}
Card jobCardMailChimp (String title, String corporate, String city, String photo) {
  return Card(
    elevation: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text(corporate, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          subtitle: Text('$title - $city', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          trailing: Image.asset(photo, width: 40),
        ),
        Wrap(
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          alignment: WrapAlignment.start,
          spacing: 5,
          children: <Widget>[
            Chip(
              label: Text('Java', style: TextStyle(color: Color.fromRGBO(99,61,192, 1))),
              backgroundColor: Color.fromRGBO(224,213,255, 1),
            ),
            Chip(
              label: Text('REST', style: TextStyle(color: Color.fromRGBO(226,160,24, 1))),
              backgroundColor: Color.fromRGBO(255,241,187, 1),
            ),
            Chip(
              label: Text('Elasticsearch', style: TextStyle(color: Colors.red)),
              backgroundColor: Color.fromRGBO(254,221,222, 1),
            ),
          ],
        )
      ],
    )
  );
}
Card jobCardFacebook (String title, String corporate, String city, String photo) {
  return Card(
    elevation: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(15),
          title: Text(corporate, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          subtitle: Text('$title - $city', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          trailing: Image.asset(photo, width: 40),
        ),
        Wrap(
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          alignment: WrapAlignment.start,
          spacing: 5,
          children: <Widget>[
            Chip(
              label: Text('REST', style: TextStyle(color: Color.fromRGBO(226,160,24, 1))),
              backgroundColor: Color.fromRGBO(255,241,187, 1),
            ),
            Chip(
              label: Text('Reactjs', style: TextStyle(color: Color.fromRGBO(43,130,219, 1))),
              backgroundColor: Color.fromRGBO(223,244,255, 1),
            ),
            Chip(
              label: Text('JavaScript', style: TextStyle(color: Colors.red)),
              backgroundColor: Color.fromRGBO(254,221,222, 1),
            ),
          ],
        )
      ],
    )
  );
}

TextStyle styleBottomNavigationBarText(){
  return TextStyle(
    fontSize: 18
  );
}

int sizeBottomNavigationBarIcon(){
  return 35;
}




