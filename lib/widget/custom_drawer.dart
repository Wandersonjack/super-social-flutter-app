import 'package:flutter/material.dart';
import 'package:super_socialize_flutter/data/data.dart';
import 'package:super_socialize_flutter/screens/home_screen.dart';
import 'package:super_socialize_flutter/screens/login_screen.dart';
import 'package:super_socialize_flutter/screens/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerItems(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 250,
                fit: BoxFit.cover,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(currentUser.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '${currentUser.name}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildDrawerItems(
            Icon(Icons.dashboard),
            'Home',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            ),
          ),
          _buildDrawerItems(
            Icon(Icons.message),
            'Chat',
            () {},
          ),
          _buildDrawerItems(
            Icon(Icons.location_on),
            'Map',
            () {},
          ),
          _buildDrawerItems(
            Icon(Icons.account_circle),
            'Your profile',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => ProfileScreen(user: currentUser,),
              ),
            ),
          ),
          _buildDrawerItems(
            Icon(
              Icons.settings,
            ),
            'Settings',
            () {},
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _buildDrawerItems(
                Icon(Icons.directions_run),
                'Logout',
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
