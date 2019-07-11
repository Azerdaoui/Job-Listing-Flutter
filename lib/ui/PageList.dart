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
        preferredSize: Size.square(74),
        child: AppBar(
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
      body: Container(
        padding: EdgeInsets.only(top: 20),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            jobCard('Full stack Developer', 'Google', 'Paris', 'images/google.png'),
            jobCard('Frontend Enginner', 'Airbnb', 'Fès', 'images/airbnb.png'),
            jobCard('Backend Developper', 'MailChimp', 'New York', 'images/mailchimp.png'),
            jobCard('Reactjs Developer', 'Facebook', 'California', 'images/facebook.png'),
          ],
        ),
      ),
    );
  }
}

Card jobCard (String title, String corporate, String city, String photo) {
  return Card(
    elevation: 7,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(20),
          title: Text(corporate, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          subtitle: Text('$title - $city', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          trailing: Image.asset(photo, width: 40),
          // isThreeLine: true,
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 0, left: 20, bottom: 10),
              child: Text(
                'Vuejs', 
              ),
            )
          ],
        ),
      ],
    )
    
  );
}