import 'package:flutter/material.dart';
import 'package:quizit/mathematics.dart';
import 'package:quizit/quiz.dart';
import 'package:quizit/quiz1.dart';
import 'package:quizit/quiz2.dart';
import 'package:quizit/quiz3.dart';
import 'main.dart';
import 'intro.dart';


class home extends StatelessWidget {
  const home({Key? key , required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     


       body: Stack(
         children: [
         Image(
         height: double.infinity,
         width: double.infinity,
         fit: BoxFit.fill,
         image: AssetImage('images/final.jpg'),),

           ListView(
             children: [

               SizedBox(height: 20,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text(
                     'ID: Tarun Srivastava',
                     style: TextStyle(
                         fontFamily: 'Oswald',
                         fontSize: 20,

                         color: Colors.white
                     ),
                   ),

                   SizedBox(width: 60,),
                   
                   Icon(Icons.search_rounded,color: Colors.white,),

                   Icon(Icons.logout,color: Colors.white,)
                 ],
               ),

               SizedBox(height: 30,),

               Center(
                 child: Text(
                   'WELCOME',
                   style: TextStyle(
                     fontFamily: 'OpenSans',
                     fontSize: 15,
                     color: Colors.white60
                   ),
                 ),
               ),

               Divider(
                 thickness: 1,
                 color: Colors.white60,
                 indent: 40,
                 endIndent: 40,
               ),

               Padding(
                 padding: const EdgeInsets.only(left: 40,right: 40),
                 child: Text(
                   "They don't shine because they are stars, they are stars because they shine.",
                   style: TextStyle(
                     fontFamily: 'OpenSans',
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                     fontSize: 15
                   ),
                 ),
               ),

               SizedBox(
                 height: 40,
               ),
               
               Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 40,right: 40),
                     child: Image(image: AssetImage('images/music1.jpg')),
                   ),

                   Padding(
                     padding: const EdgeInsets.all(100),
                     child: Text(
                       'be the creator of your own music',
                       style: TextStyle(
                           fontFamily: 'Oswald',
                           fontSize: 15,

                           color: Colors.white70
                       ),
                     ),
                   ),

                 ],
               ),

               SizedBox(height: 80,),

               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Row(
                   children: [
                     Text(
                       'SUBJECTS',
                       style: TextStyle(
                         fontFamily: 'OpenSans',
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                       ),
                     ),

                     SizedBox(width: 20,),

                     Icon(
                       Icons.keyboard_arrow_down_outlined,
                       color: Colors.white,
                     ),
                   ],
                 ),
               ),

               SizedBox(height: 20,),

               Container(
                 height: 150,
                 margin: EdgeInsets.only(left: 40,right: 40),
                 decoration: BoxDecoration(
                     color: Colors.black38,
                     borderRadius: BorderRadius.all(Radius.circular(60))
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Center(
                       child: Text(
                         'MATHEMATICS',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                           fontFamily: 'OpenSans',
                           color: Colors.white
                         ),
                       ),
                     ),

                     Center(
                       child: Text(
                         'collection of tricky questions that\nchallenges your mental calculation.',
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 10,
                             fontFamily: 'OpenSans',
                             color: Colors.white70
                         ),
                       ),
                     ),

                     TextButton(onPressed: () {Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => QuizScreen1(title: 'QuizScreen1')),
                     );}, child: Text(
                       'Enter',
                       style: TextStyle(
                         fontFamily: 'OpenSans',
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                       ),
                     ))


                   ],
                 )
               ),  //maths

               SizedBox(height: 20,),

               Container(
                   height: 150,
                   margin: EdgeInsets.only(left: 40,right: 40),
                   decoration: BoxDecoration(
                       color: Colors.black38,
                       borderRadius: BorderRadius.all(Radius.circular(60))
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Center(
                         child: Text(
                           'PHYSICS',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                               fontFamily: 'OpenSans',
                               color: Colors.white
                           ),
                         ),
                       ),

                       Center(
                         child: Text(
                           'witness a storm of questions about\nhow this universe works.',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 10,
                               fontFamily: 'OpenSans',
                               color: Colors.white70
                           ),
                         ),
                       ),

                       TextButton(onPressed: () {Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => QuizScreen2(title: 'QuizScreen2')),
                       );}, child: Text(
                         'Enter',
                         style: TextStyle(
                             fontFamily: 'OpenSans',
                             fontSize: 15,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                         ),
                       ))


                     ],
                   )
               ), //physics

               SizedBox(height: 20,),

               Container(
                   height: 150,
                   margin: EdgeInsets.only(left: 40,right: 40),
                   decoration: BoxDecoration(
                       color: Colors.black38,
                       borderRadius: BorderRadius.all(Radius.circular(60))
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Center(
                         child: Text(
                           'CHEMISTRY',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                               fontFamily: 'OpenSans',
                               color: Colors.white
                           ),
                         ),
                       ),

                       Center(
                         child: Text(
                           'answer the detail theory behind\nbonding on atomic level.',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 10,
                               fontFamily: 'OpenSans',
                               color: Colors.white70
                           ),
                         ),
                       ),

                       TextButton(onPressed: () {Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => QuizScreen3(title: 'QuizScreen3')),
                       );}, child: Text(
                         'Enter',
                         style: TextStyle(
                             fontFamily: 'OpenSans',
                             fontSize: 15,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                         ),
                       ))


                     ],
                   )
               ),  //chemistry

               SizedBox(height: 20,),

               Container(
                   height: 150,
                   margin: EdgeInsets.only(left: 40,right: 40),
                   decoration: BoxDecoration(
                       color: Colors.black38,
                       borderRadius: BorderRadius.all(Radius.circular(60))
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Center(
                         child: Text(
                           'COMPUTER',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                               fontFamily: 'OpenSans',
                               color: Colors.white
                           ),
                         ),
                       ),

                       Center(
                         child: Text(
                           'challenge with your knowledge on how\nwell you communicate with machines.',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 10,
                               fontFamily: 'OpenSans',
                               color: Colors.white70
                           ),
                         ),
                       ),

                       TextButton(onPressed: () {Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => QuizScreen4(title: 'QuizScreen4')),
                       );}, child: Text(
                         'Enter',
                         style: TextStyle(
                             fontFamily: 'OpenSans',
                             fontSize: 15,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                         ),
                       ))


                     ],
                   )
               ),  //computer

               SizedBox(height: 20,),

               Container(
                 height: 150,
                 decoration: BoxDecoration(
                     color: Colors.black38,
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60), )
                 ),
                 child: Center(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [

                       Text(
                           'created',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontFamily: 'OpenSans',

                           color: Colors.white60,
                         ),
                       ),

                       Text(
                         'by',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontFamily: 'OpenSans',

                           color: Colors.white60,
                         ),
                       ),

                       Text(
                         'Tarun Srivastava',
                         style: TextStyle(

                           fontFamily: 'Oswald',
                           fontSize: 20,

                           color: Colors.white,
                         ),
                       ),
                     ],
                   ),
                 ),
               )


             ],

           ),

      ],
       ),




    );
  }
}
