import 'package:blood_donation/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountView extends StatelessWidget {
  final bool isMe;

  const AccountView({Key key, this.isMe}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          if (!isMe) AppBar(),
          Container(
            height: 230,
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 63,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 60,
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 18,
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 18,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Sudarshan Shrestha',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                if (!isMe)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ranibari,Kathmandu',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(.8),
                          radius: 15,
                          child: Icon(Icons.phone, color: Colors.deepOrange)),
                      IconButton(
                          color: Colors.grey,
                          icon: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white.withOpacity(.8),
                            child: Icon(Icons.message,
                                size: 18, color: Colors.deepOrange),
                          ),
                          onPressed: () {})
                    ],
                  )
              ],
            ),
          ),
          SizedBox(height: 10),
          if (!isMe)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rate this user',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tell others what you think',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.star_border,
                              color: Colors.grey[600],
                            ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ReviewPage());
                    },
                    child: Text(
                      "Write a review",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange[600]),
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "A fearless junior policeman ( #MarkChao​ ), who can only see right and wrong is willing to do anything to uncover the truth. Meanwhile a gangster ( #HuangBo​ ), who fears death above anything else is struggling to stay out of serious trouble, his risky decisions have left his life at threat. Two people with completely different perspectives on life come together as partners in a way no one could ever imagine. Somehow, the fate of the world ends up in their hands; they have 36 hours to resolve a crisis which could destroy Harbor City…     ",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Ratings and reviews',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[700]),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '4.5',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.deepOrange,
                                )
                            ],
                          ),
                          SizedBox(height: 2),
                          Text(
                            '234,123',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Column(
                          children: [
                            for (int i = 5; i > 0; i--)
                              Row(
                                children: [
                                  Text(
                                    i.toString(),
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Stack(
                                      children: [
                                        Container(
                                          //  /width: MediaQuery.of(context).size.width,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(.4),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                        ),
                                        Container(
                                            height: 10,
                                            alignment: Alignment.bottomLeft,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.deepOrange,
                                                borderRadius:
                                                    BorderRadius.circular(30)))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  // height: 120,
                  // color: Colors.deepOrange,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              'no image',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Rich Tend',
                            style: TextStyle(),
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.grey[700],
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Icon(
                              Icons.star_border,
                              size: 14,
                            ),
                          SizedBox(width: 5),
                          Text(
                            DateTime.now().toString().substring(0, 10),
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "A fearless junior policeman ( #MarkChao​ ), who can only see right and wrong is willing to do anything to uncover the truth. Meanwhile a gangster ( #HuangBo​ ), who fears death above anything else is struggling to stay out of serious trouble, his risky decisions have left his life at threat. Two people with completely different perspectives on life come together as partners in a way no one could ever imagine. Somehow, the fate of the world ends up in their hands; they have 36 hours to resolve a crisis which could destroy Harbor City…   ",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Was this review helpful?',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 12),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: Text(
                              ' Yes ',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: Text(
                              ' No ',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class ReviewPage extends StatelessWidget {
  const ReviewPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.close)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 5,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Sudarshan Shrestha',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rate this user',
                    style: TextStyle(fontSize: 12),
                  ),
                ]),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(Home());
                  },
                  child: Text(
                    'Post'.toUpperCase(),
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            )),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anupma Shrestha',
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Reviews are public and include\n your account details.',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.star_border))
              ],
            ),
            SizedBox(height: 30),
            TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: 'Describe the user in detail',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
            SizedBox(height: 20),
            Text('Tell us more about user (optional)'),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              height: 140,
            )
          ],
        ));
  }
}
