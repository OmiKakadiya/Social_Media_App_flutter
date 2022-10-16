import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/providers/user_provider.dart';

class CommentCard extends StatefulWidget {
  
  const CommentCard({super.key});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1665680521183-1a77175d81dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
            radius: 18,  
          ),
          Expanded(
            child: Padding(
              padding:const EdgeInsets.only(left: 16,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'username',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'some Description to insert',
                      )
                    ],
                    
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text('23/12/21',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                    ),
              ],
              ),
              ),
          ),
            Container(
              padding: const EdgeInsets.all(8),
              child:const  Icon(Icons.favorite,size: 16,),
            )
        ],
      ),
    );
  }
}