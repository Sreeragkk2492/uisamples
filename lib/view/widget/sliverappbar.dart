import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uisamples/view/utils/appcolors.dart';

class SliverappBar extends StatelessWidget {
  const SliverappBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
     // pinned: true,
          leadingWidth: 73,
          backgroundColor: Appcolor.bottombarcolor,
          expandedHeight: 80,
          leading: Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.bars,
                  size: 16,
                  color: Appcolor.iconcolor,
                )),
          ),
          title: Text(
            'HOME',
            style: TextStyle(
                color: Color.fromARGB(255, 1, 57, 105),
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 80,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.bell,
                    size: 16,
                    color: Appcolor.iconcolor,
                  )),
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: ListTile(
              minLeadingWidth: 60.0,
              tileColor: Appcolor.bottombarcolor,
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/home/t1.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    // child: IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       FontAwesomeIcons.bell,
                    //       size: 16,
                    //       color: Appcolor.iconcolor,
                    //     )),
                  ),
                ),
              ),
              title: Text(
                'Hello Sreerag',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.primarytextcolor),
              ),
              subtitle: Text('View profile'),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Appcolor.secondaryiconcolor,
                  )),
            ),
          ),
        );
  }
}