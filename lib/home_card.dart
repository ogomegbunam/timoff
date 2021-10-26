import 'package:flutter/material.dart';

import 'const.dart';
import 'home_model.dart';



class AppCard extends StatelessWidget {

  AppModel appModel;


  AppCard(this.appModel);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, appModel.navigation);
      },
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: kactive,
          borderRadius: BorderRadius.circular(16),
         // image: DecorationImage(
           // image: AssetImage(appModel.image),
          //  fit: BoxFit.cover,
          //  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
       //   ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              appModel.icon, color: kwhite,
            ),
            SizedBox(width: 10,),
            Text(
              '${appModel.title} ',
              style: TextStyle(
                // color: kwhite.withOpacity(.5),
                color: kwhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
