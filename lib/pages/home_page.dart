import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "Facebook",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[500],
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey[500],
              size: 35,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          //#Creat Post
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,top: 10),
            height: 120,
            color: Colors.black,
            child: Column(
              children: [
                //#serarchuser
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user1.jpeg"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 45,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.video_call_rounded),
                                color: Colors.red,
                                iconSize: 30,
                              ),
                              Text(
                                "Live",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 14,bottom: 14),
                          width: 1,
                          color: Colors.grey[300],
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.image,color: Colors.green,),
                                color: Colors.red,
                                iconSize: 30,
                              ),
                              Text("Photo", style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 14,bottom: 14),
                          width: 1,
                          color: Colors.grey[300],
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.location_on,),
                                color: Colors.red,
                                iconSize: 30,
                              ),
                              Text(
                                "Check in",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          //#Story
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            color: Colors.black,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(storyImage:"assets/images/story_5.jpeg",
                    userImage:'assets/images/user_5.jpeg',
                    userName:"User five"),
                makeStory(storyImage:"assets/images/story_4.jpeg",
                    userImage:'assets/images/user_4.jpeg',
                    userName:"User five"),
                makeStory(storyImage:"assets/images/story_3.jpeg",
                    userImage:'assets/images/user_3.jpeg',
                    userName:"User five"),
                makeStory(storyImage:"assets/images/story_2.jpeg",
                    userImage:'assets/images/user_2.jpeg',
                    userName:"User five"),
                makeStory(storyImage:"assets/images/story_1.jpeg",
                    userImage:'assets/images/user_1.jpeg',
                    userName:"User five"),

              ],
            ),
          ),

          SizedBox(height: 8 ,),

          //#store Feed
          makeFeed(
            userName:"User One",
            userImage:"assets/images/user_1.jpeg",
            feedTime:"1 hour ago",
            feedText:"All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
            feedImage1:"assets/images/feed_1.jpeg",
            feedImage2:"assets/images/feed_2.jpeg",
          ),
          makeFeed(
            userName:"User Two",
            userImage:"assets/images/user_2.jpeg",
            feedTime:"1 hour ago",
            feedText:"All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
            feedImage1:"assets/images/feed_2.jpeg",
            feedImage2:"assets/images/feed_3.jpeg",
          ),
          makeFeed(
            userName:"User Two",
            userImage:"assets/images/user_3.jpeg",
            feedTime:"1 hour ago",
            feedText:"All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
            feedImage1:"assets/images/feed_3.jpeg",
            feedImage2:"assets/images/feed_4.jpeg",
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage,userImage,userName}){
    return AspectRatio(
     aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2,color: Colors.blue),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                  ),
                ),
              ),
              Text(userName,style: TextStyle(fontSize: 15,color: Colors.grey[300]),),
            ],
          ),
        ),
       ),
    );
}
  Widget makeFeed({userName,userImage,feedTime,feedText,feedImage1,feedImage2}){
    return Container(
      padding: EdgeInsets.only(left: 10,right: 15,top: 5),
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //UserImage
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(width: 2,color: Colors.blue,),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userName,style: TextStyle(color: Colors.grey[400],fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(height: 3,),
                      Text(feedTime,style: TextStyle(color: Colors.grey[400],fontSize: 13,),),

                    ],
                  ),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.grey[400],size: 40,)),
            ],
          ),
          SizedBox(height: 10,),
          Text(feedText,style: TextStyle(fontSize: 17,color: Colors.grey[400],height: 1.5,letterSpacing: .7),),
          SizedBox(height: 5,),
          //#photo
          Row(
            children: [
              Container(
                height: 400,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(feedImage1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(feedImage2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          //Like
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(offset: Offset(-5,0),
                    child: makeLove(),
                    ),
                    Text("2,5K",style: TextStyle(color: Colors.grey[400],fontSize: 20),),
                  ],
                ),
                Text("400 Comment",style: TextStyle(color: Colors.grey[500]),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          //#Like Comment Share
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 10,right: 10,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    makeLikeButton(isActive: true),
                    makeCommentbuton(),
                    makeSharebutton(),
                   ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
  Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.thumb_up,size: 20,color: isActive? Colors.blue:Colors.grey[500],),
            SizedBox(width: 10,),
            Text("Like",style: TextStyle(color: isActive?Colors.blue:Colors.grey[500],fontSize: 17,),),
          ],
        ),
      ),
    );
  }
  Widget makeCommentbuton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.chat_rounded,size: 20,color:Colors.grey[500],),
            SizedBox(width: 10,),
            Text("Comment",style: TextStyle(color:Colors.grey[500],fontSize: 17,),),
          ],
        ),
      ),
    );
  }
  Widget makeSharebutton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.share,size: 20,color:Colors.grey[500],),
            SizedBox(width: 10,),
            Text("Share",style: TextStyle(color:Colors.grey[500],fontSize: 17,),),
          ],
        ),
      ),
    );
  }
  Widget makeLike(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(width: 1,color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.thumb_up_alt,color: Colors.white,size: 20,),
      ),
    );
  }
  Widget makeLove(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(width: 1,color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.favorite
          ,color: Colors.white,size: 20,),
      ),
    );
  }
}
