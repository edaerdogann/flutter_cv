import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          FractionallySizedBox(
              alignment:Alignment.topCenter,
              heightFactor: 0.7,
              child: Container(
                color: Colors.black,
              ),
          ),
          FractionallySizedBox(
            alignment:Alignment.topCenter,
            heightFactor: 0.7,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/im1.jpg'),
                  fit: BoxFit.cover,
                ),

              ),

            ),
          ),
          ///Sliding Panel
          SlidingUpPanel(
            minHeight: MediaQuery.of(context).size.height * 0.35,
            maxHeight: MediaQuery.of(context).size.height * 0.85,
            body: Container(
              color: Colors.transparent,
            ),
            panelBuilder: (ScrollController controller){
              return _panelBody(controller);
            }


          )


        ]

      ),
    );
  }

  ///Panel Body
  SingleChildScrollView _panelBody(ScrollController controller) {
    return SingleChildScrollView(
              controller: controller,
              physics: ClampingScrollPhysics(),
              child: Column(

              ),
            );
  }
}
