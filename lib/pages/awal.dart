import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Traveloka Clone'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Akun(),
          Divider(),
          MenuUtama(),
          MenuTambahan(),
          Promo(),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://source.unsplash.com/user/kartini"))),
        ),
        title: Text(
          'Kartini Nurfalah',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text('306 Poin'),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(
              padding: EdgeInsets.all(7.0),
            ),
            RaisedButton(
              child: Text('Traveloka Pay'),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            )
          ],
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Tiket Pesawat',
    icon: Icons.flight,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Hotel',
    icon: Icons.hotel,
    colorBox: Colors.blue[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pesawat + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.purple,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Aktivitas & Rekreasi',
    icon: Icons.local_play,
    colorBox: Colors.green[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Kuliner',
    icon: Icons.local_dining,
    colorBox: Colors.orange,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Kereta Api',
    icon: Icons.train,
    colorBox: Colors.orange[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Bus & Trave;',
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Transportasi Bandara',
    icon: Icons.local_taxi,
    colorBox: Colors.blue[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Rental Mobil',
    icon: Icons.directions_car,
    colorBox: Colors.green[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Semua Produk',
    icon: Icons.blur_on,
    colorBox: Colors.grey,
    iconColor: Colors.black,
  ),
];

class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        children: <Widget>[
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 11.0),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(
    title: 'Tagihan & Isi Ulang',
    icon: Icons.receipt,
  ),
  MenuTambahanItem(
    title: 'Pay Later',
    icon: Icons.payment,
  ),
  MenuTambahanItem(
    title: 'Status Penerbangan',
    icon: Icons.airplanemode_active,
  ),
  MenuTambahanItem(
    title: 'Pulsa & Paket Internet',
    icon: Icons.signal_cellular_4_bar,
  ),
  MenuTambahanItem(
    title: 'Online Check-In',
    icon: Icons.airplanemode_inactive,
  ),
  MenuTambahanItem(
    title: 'Notifikasi Harga',
    icon: Icons.notifications,
  ),
];

class MenuTambahanItem extends StatelessWidget {
  MenuTambahanItem({this.title, this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Promo Saat ini',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {},
          ),
        ),
        Container(
          height: 150.0,
          width: double.infinity,
          padding: EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue[400],
                          Colors.blue[600],
                        ]),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(20.0, 20.0),
                              bottomRight: Radius.elliptical(150.0, 150.0))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                        child: Text(
                          '%',
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lihat Semua \nPromo',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/promo.jpeg'),
                  ),
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              )
            ],
          ),
        )
      ],
    );
  }
}
