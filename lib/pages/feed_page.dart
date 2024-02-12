import 'package:flutter/material.dart';

import '../madel/post_model.dart';
import '../madel/story_madel.dart';



class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {


 final List<Story> _stories = [
    Story("assets/images/user_1.jpg","Jazmin"),
    Story("assets/images/user_2.jpg","Sylvester"),
    Story("assets/images/user_3.jpg","Lavina"),
    Story("assets/images/user_1.jpg","Jazmin"),
    Story("assets/images/user_2.jpg","Sylvester"),
    Story("assets/images/user_3.jpg","Lavina"),
  ];

  final List<Post> _posts = [
    Post(
        userName: "Brianne",
        userImage: "assets/images/user_1.jpg",
        postImage: "assets/images/feed_1.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        userName: "Henri",
        userImage: "assets/images/user_2.jpg",
        postImage: "assets/images/feed_2.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        userName: "Mariano",
        userImage: "assets/images/user_3.jpg",
        postImage: "assets/images/feed_3.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(

       child: SingleChildScrollView(
         child: Column(
           children: [
             Divider(),

             //storys
             Container(
               padding: EdgeInsets.symmetric(horizontal: 20),

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Stories",style: TextStyle(color: Colors.white),),
                   Text("Watch all",style: TextStyle(color: Colors.white),)
                 ],
               ),
             ),
             //story list

             Container(
              margin: EdgeInsets.symmetric(vertical: 10),
               // padding: EdgeInsets.symmetric(horizontal: 20),
               width: MediaQuery.of(context).size.width,
               height: 110,
               //color: Colors.grey,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _stories.map((story) {
                    return _itemOfStory(story);
                  }).toList(),
                ),
             ),
             //post list
             Container(
              width: MediaQuery.of(context).size.width,
               child: ListView.builder(

                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 itemCount: _posts.length,
                 itemBuilder: (context,i){
                   return  _itemOfPost(_posts[i]);
                 },
               ),
             )
           ],
         )
       ),
      )
    );
  }

  Widget  _itemOfPost(Post post){
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                    image: AssetImage(post.userImage!),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,

                  ),

                ),
                SizedBox(width: 10,),
                Text(post.userName!,style: TextStyle(color: Colors.white),),
                Expanded(child: SizedBox.shrink()),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_horiz,color: Colors.white,),
                )
              ],
            ),
          ),

          //#feed image
          FadeInImage(
            image: AssetImage(post.postImage!),
            placeholder: AssetImage("assets/images/place"),
            width: MediaQuery.of(context).size.width,
              ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(

                children:[
                  IconButton(onPressed:(){}, icon: Icon(Icons.favorite_border,color: Colors.white,),
                  ),

                IconButton(onPressed:(){}, icon: Icon(Icons.message_sharp,color: Colors.white,),
                ),

                IconButton(onPressed:(){}, icon: Icon(Icons.send_sharp,color: Colors.white,),
                ),
              ],
              ),
                IconButton(onPressed:(){}, icon: Icon(Icons.bookmark_border,color: Colors.white,),
                ),

    ],
          ),

          //#texts

          Container(
            width: double.infinity,

            margin: EdgeInsets.symmetric(horizontal: 14),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "liked by",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                    text: "Sigmund",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Davana",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "and",
                    style: TextStyle(color: Colors.white,),
                  ),
                  TextSpan(
                    text: "1263 others",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ]
              ),
            ),
          ),

          //#cuption

          Container(
              width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: post.userName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                  ),
                  TextSpan(
                      text:" ${post.caption}",
                      style: TextStyle(

                        color: Colors.white,
                      ),
                  ),
                ]
              ),
            ),

          )
        ],
      ),
    );
  }



  Widget _itemOfStory(Story story){
    return Column(
      children: [
        Container(


     width: 70,
       height: 70,
          margin: EdgeInsets.symmetric(horizontal: 15),
         // margin: EdgeInsets.only(left: 10),
         // width: 50,
         // height: 50,
         // color: Colors.red,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(width: 3,color: Color(0xFF8e44ad))
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image!),
               width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),

        Text(story.name!,style: TextStyle(color: Colors.white),)
      ],
    );
  }


}





