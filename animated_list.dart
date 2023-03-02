import 'package:animated_list_plus/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedScreen extends StatelessWidget {
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title:const Text('GDSC APP') ,
      ),
      body: AnimationLimiter(
        child: ListView.builder(
            itemBuilder:(context , index)
         {
           return AnimationConfiguration.staggeredList(
             position: index,
             delay: const Duration(milliseconds: 200),
              child: SlideAnimation(
               duration: const Duration(milliseconds: 2500),
               curve: Curves.fastLinearToSlowEaseIn,
               horizontalOffset: -300,
               verticalOffset: -150,
               child: Container(
                 height: size.height / 10,
                 width: size.width / 0.9,
                 margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                 decoration:
                 BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                       spreadRadius: 5,
                       blurRadius: 7,
                       offset: const Offset(0 , 3),
                     )
                   ]
                 ),
                 child: ListTile(
                     title:
                   Text('Item$index',
                     textAlign: TextAlign.center,


                 )

                 ),
               ),

             ),
           );
    },
          itemCount: 20,


    ),
      ),
      );
  }
}
