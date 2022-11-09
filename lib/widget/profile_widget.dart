import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      width: double.infinity,
      decoration:const BoxDecoration(color: Colors.blueGrey,),
    
    child: Column(children:  [
      Padding(padding: const EdgeInsets.only(top: 50),
      child:  Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/girl.jpg")
            ),
            
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )
        
      ),),
      
    ]),
      
      
      
      
     
    );  
     

  }
}