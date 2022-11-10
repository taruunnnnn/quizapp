import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';

class intro extends StatelessWidget {
  const intro({Key? key , required String title}) : super(key: key);

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

       Column(
         children: [

           SizedBox(
             height: 80,
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Container(
                   height: 60,
                   width: 150,
                   child: TextButton(
                     child: Text('Get Started',style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),

                     onPressed: () {
                       Navigator.of(context)
                           .pushAndRemoveUntil(
                         MaterialPageRoute(builder: (builder) => home(title: 'home')),
                             (route) => false,
                       );
                     },
                   ),
                   decoration: BoxDecoration(
                     color: Colors.black38,
                     borderRadius: BorderRadius.all(Radius.circular(60))
                   ),
                 ),
               ),
             ],
           ),

           SizedBox(
             height: 150,
           ),

           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Text(
               'Discover the dream of knowledge',
               style: TextStyle(
                 color: Colors.white60,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Roboto',
                 fontSize: 30,
               ),
             ),
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Text(
                   'QuizIt',
                   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Oswald',
                     fontSize: 40,
                   ),
                 ),
               ),
             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Text(
                   'Ensure your strength and correct\nyour faults',
                   style: TextStyle(
                     color: Colors.white70,
                     fontFamily: 'Roboto',
                     fontSize: 20,
                   ),
                 ),
               ),
             ],
           ),

           SizedBox(
             height: 80,
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 height: 60,
                 width: 200,
                 child: TextButton(
                   child: Text('Continue with Google',style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),

                   onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => home(title: 'home')),
                     );
                   },
                 ),
                 decoration: BoxDecoration(
                     color: Colors.black38,
                     borderRadius: BorderRadius.all(Radius.circular(60))
                 ),
               ),
             ],
           ),

           SizedBox(
             height: 20,
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 height: 60,
                 width: 200,
                 child: TextButton(
                   child: Text('Sign up',style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),

                   onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => home(title: 'home')),
                     );
                   },
                 ),
                 decoration: BoxDecoration(
                     color: Colors.black38,
                     borderRadius: BorderRadius.all(Radius.circular(60))
                 ),
               ),
             ],
           ),

           SizedBox(
             height: 10,
           ),

           RichText(text: TextSpan(
             children: [
               TextSpan(
                 text: 'Already have an account?',
                 style: TextStyle(
                   fontFamily: 'OpenSans',
                   color: Colors.white60,
                   fontWeight: FontWeight.bold,
                   fontSize: 15,
                 )
               ),

               TextSpan(
                   text: ' Log in',
                   style: TextStyle(
                     fontFamily: 'OpenSans',
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 15,
                   )
               )
             ]

           ))
         ],
       )


     ],
       ),





    );
  }
}
