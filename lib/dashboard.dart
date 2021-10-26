import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_card.dart';
import 'home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  const [
                        Text("Hi Temilola",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600
                        ),),

                        // return getName(isLoading);
                        // return Text(
                        //   user!.fullName == null
                        //       ? "Get full name"
                        //       : "${user.fullName}",
                        //   style: kDarkHeadingextStyle,
                        // );

                        // SizedBox(
                        //   height: 5,
                        // ),

                      ],
                    ),
                    // Container(
                    //   width: 50,
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //       shape: BoxShape.circle,
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //               "assets/5e2438ccaf8e90d629e42fc25d80654f90182f15.png"),
                    //           fit: BoxFit.cover)),
                    // )
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),

                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    StaggeredGridView.countBuilder(
                      // physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      physics:ClampingScrollPhysics() ,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(0),
                      crossAxisCount: 1,
                     itemCount: 4,
                      


                      mainAxisSpacing: 10,
                      itemBuilder: (context, index) {
                        // return Text("done");
                        return AppCard(AppModel.getApps()[index]);
                      },
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
