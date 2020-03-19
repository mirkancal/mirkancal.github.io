import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/custom_icons/custom_icons.dart';
import 'package:personal_website/responsive_widget.dart';
import 'package:personal_website/widget/draggable_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizeInfo) {
        if (sizeInfo.deviceScreenType == DeviceScreenType.Desktop) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Container(
                height: sizeInfo.screenSize.height,
                width: sizeInfo.screenSize.width,
              ),
            ),
          );
        }
        if (sizeInfo.deviceScreenType == DeviceScreenType.Mobile ||
            sizeInfo.deviceScreenType == DeviceScreenType.Tablet) {
          return Scaffold(
            backgroundColor: Color(0xFFC5C5B2),
            key: _scaffoldKey,
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color(0xFFCF872F),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(CustomIcons.home_icon),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CustomIcons.portfolio_icon),
                  title: Text('Portfolio'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CustomIcons.talk_icon),
                  title: Text('Talks'),
                ),
              ],
              currentIndex: 0,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white60,
              onTap: (index) {},
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 350,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/background.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "I build amazing apps",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(color: Colors.white, fontSize: 32),
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                "Mobile app developer from Izmir, Turkey",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                        color: Colors.white70, fontSize: 24),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Projects",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                                fontWeight: FontWeight.w800,
                                // color: Color(0xFFCF872F),
                              ),
                        ),
                        Text(
                          "show more",
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: Color(0xFF46463F),
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ProjectItem(),
                        ProjectItem(),
                        ProjectItem(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
        return Container();
      },
    );

    //   return ResponsiveWidget(
    //     largeScreen: Scaffold(
    //       appBar: AppBar(),
    //       drawer: ResponsiveWidget.isSmallScreen(context)
    //           ? Drawer(
    //               child: Container(
    //                 color: Color(0xFFF8F4E3),
    //                 child: ListView(
    //                   padding: const EdgeInsets.all(20),
    //                   children: <Widget>[
    //                     NavButton(
    //                       text: "about",
    //                       onPressed: () {},
    //                     ),
    //                     NavButton(
    //                       text: "work",
    //                       onPressed: () {
    //                         Navigator.pushNamed(context, '/work');
    //                       },
    //                     ),
    //                     NavButton(
    //                       text: "contact",
    //                       onPressed: () {},
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             )
    //           : null,
    //       body: SingleChildScrollView(
    //         child: AnimatedPadding(
    //           duration: Duration(seconds: 1),
    //           padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
    //           child: ResponsiveWidget(
    //             largeScreen: Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: <Widget>[
    //                 NavHeader(),
    //                 SizedBox(
    //                   height: MediaQuery.of(context).size.height * 0.1,
    //                 ),
    //                 ProfileInfo(),
    //                 SizedBox(
    //                   height: MediaQuery.of(context).size.height * 0.2,
    //                 ),
    //                 SocialInfo(),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }
  }
}

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: <Widget>[
            ClayContainer(
              borderRadius: 20,
              color: Color(0xFFC5C5B2),
              depth: 10,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   color: Colors.green,
              //   image: DecorationImage(
              //     image: NetworkImage(
              //         "https://images.unsplash.com/photo-1582057052638-62680186a24d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=654&q=80"),
              //   ),
              // ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Sistemkoin",
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      Text(
                        "Sistemkoin is a cryptocurrency exchange platform",
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MyName(),
//          Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: <Widget>[
                NavButton(
                  text: "about",
                  onPressed: () {},
                ),
                NavButton(
                  text: "work",
                  onPressed: () {
                    Navigator.pushNamed(context, "/work");
                  },
                ),
                NavButton(
                  text: "contact",
                  onPressed: () {},
                ),
              ],
            )
        ],
      ),
    );
  }
}

class MyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FittedBox(
          child: Text(
            "MIRKAN\nCALISKAN",
            style: Theme.of(context).textTheme.display1,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color(0xFFE8368F),
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = const Color(0xFFC6F7E2)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text, style: Theme.of(context).textTheme.button),
//      borderSide: BorderSide(
//        color: color,
//      ),
      onPressed: onPressed,
      color: color,
//      highlightedBorderColor: color,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => DraggableCard(
        child: Container(
          height: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            // backgroundBlendMode: BlendMode.luminosity,
            // color: Color(0xFF3393CD),
            boxShadow: [BoxShadow(color: Colors.blue, spreadRadius: 5)],
//            borderRadius: BorderRadius.circular(40),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/pp.jpg"),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  profileData(context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hi there! My name is",
            style: Theme.of(context).textTheme.title,
          ),
          FittedBox(
            child: Text(
              "Mirkan",
              style: TextStyle(
                fontSize: 100,
                color: Color(0xFF2BB0ED),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "I am a software engineer, student, and musician currently\n"
            "living in İzmir, Turkey. My interests range from design to\n"
            "entrepreneurship. Currently I'm developing mobile apps\n"
            "with Flutter and React Native. I am also interested in \n"
            "machine learning, computer vision and web development.",
            softWrap: true,
            style: Theme.of(context).textTheme.body1,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "Resume",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                width: 20,
              ),
              OutlineButton(
                borderSide: BorderSide(
                  color: Color(0xFF3393CD),
                ),
                shape: StadiumBorder(),
                child: Text("Say Hi!"),
                onPressed: () {},
                padding: EdgeInsets.all(10),
              )
            ],
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          profileImage(context),
          profileData(context),
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData(context)
        ],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavButton(
                text: "Github",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "Linkedin",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "Stackoverflow",
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),
          Text(
            "Powered by Flutter Web ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          NavButton(
            text: "Github",
            onPressed: () {},
            color: Colors.blue,
          ),
          NavButton(
            text: "Linkedin",
            onPressed: () {},
            color: Colors.blue,
          ),
          NavButton(
            text: "Stackoverflow",
            onPressed: () {},
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    Path triangle = Path()..moveTo(0, height * 0.5);
    triangle.quadraticBezierTo(
        width * 0.25, height * 0.25, width * 0.5, height * 0.5);
    // triangle.close();
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(triangle, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
