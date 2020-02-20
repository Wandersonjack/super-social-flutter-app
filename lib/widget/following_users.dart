import 'package:flutter/material.dart';
import 'package:super_socialize_flutter/data/data.dart';
import 'package:super_socialize_flutter/models/user_model.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(
            'Following',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 80,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index){
              User user = users[index];
              return Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Theme.of(context).primaryColor),
                  boxShadow: [BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0,2),
                    blurRadius: 6
                  )],
                  shape: BoxShape.circle
                ),
                child: ClipOval(
                  child: Image(
                    height: 60,
                    width: 60,
                    image: AssetImage(user.profileImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
