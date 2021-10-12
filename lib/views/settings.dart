
import 'package:flutter/material.dart';
import 'package:hci_layout/views/history.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color titleColor = Color(0xa896c7);
  Color space = Color(0xf6f6fe);
  Color fontWord = Color(0x2f2247);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backgrond.png"), fit: BoxFit.cover)),
      //color: Color(0xff66667c),
      //padding: EdgeInsets.all(30),
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          title("Account"),
          Divider(height: 1,color: Colors.white10,),
          ListTile(
            focusColor: Colors.red,
            leading: Icon(Icons.password, color: Colors.white, ),
            title: Text('Change password', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Color(0xff222242),
          ),
          Divider(height: 1,color: Colors.white10,),
          ListTile(
            leading: Icon(Icons.phone_bluetooth_speaker_outlined, color: Colors.white,),
            title: Text('Change phone number', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Colors.white,
          ),
          Divider(height: 1,color: Colors.white10,),
          ListTile(
            leading: Icon(Icons.history, color: Colors.white,),
            title: Text('History', style: TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => History(),
                  ),)
            },
            tileColor: Colors.white,
          ),
          Divider(height: 1,color: Color(0xff6f6fe),),
          title("General"),
          Divider(height: 1,color: Color(0xff6f6fe),),
          ListTile(
            leading: Icon(Icons.not_listed_location_outlined, color: Colors.white,),
            title: Text('Frequently asked questions', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Colors.white,
          ),
          Divider(height: 1,color: Color(0xff6f6fe),),
          ListTile(
            leading: Icon(Icons.support_agent , color: Colors.white,),
            title: Text('Support', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Colors.white,
          ),
          Divider(height: 1,color: Color(0xff6f6fe),),
          ListTile(
            leading: Icon(Icons.share, color: Colors.white,),
            title: Text('Share with friends', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Colors.white,
          ),
          Divider(height: 1,color: Color(0xff6f6fe),),
          title("Application"),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.white,),
            title: Text('Settings notification', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Colors.white,
          ),
          Divider(height: 1,color: Color(0xff6f6fe),),
          ListTile(
            leading: Icon(Icons.star_border, color: Colors.white,),
            title: Text('Rating', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Colors.white,
          ),
          Divider(height: 1,color: Color(0xff6f6fe),),
          ListTile(
            leading: Icon(Icons.language, color: Colors.white,),
            title: Text('Language', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Colors.white,
          ),
          Divider(height: 1,color: Color(0xff6f6fe),),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.white,),
            title: Text('Log out', style: TextStyle(color: Colors.white),),
            onTap: () => {},
            tileColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20,
            color: Color(0xff40d876),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
