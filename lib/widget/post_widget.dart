import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Post {
  final String username;
  final String imageAsset1;
  final String location;
  final String imageAsset;
  final int likes;
  final int comments;

  Post({
    required this.username,
    required this.imageAsset1,
    required this.location,
    required this.imageAsset,
    required this.likes,
    required this.comments,
  });
}
List<Post> posts = [
  Post(
    username: 'babywhite14',
    imageAsset1: 'assets/instagram/1.png',
    location: 'Hue, VietNam',
    imageAsset: 'assets/instagram/3.png',
    likes: 12,
    comments: 13,
  ),
  Post(
    username: 'minmin2851',
    imageAsset1: 'assets/instagram/2.png',
    location: 'Hue, VietNam',
    imageAsset: 'assets/instagram/4.png',
    likes: 11,
    comments: 15,
  ),
  Post(
    username: 'datdeptraiv',
    imageAsset1: 'assets/instagram/5.png',
    location: 'Hue, VietNam',
    imageAsset: 'assets/instagram/6.png',
    likes: 167,
    comments: 16,
  ),
  Post(
    username: 'nguyentiendat412',
    imageAsset1: 'assets/instagram/8.png',
    location: 'Hue, VietNam',
    imageAsset: 'assets/instagram/7.png',
    likes: 1412,
    comments: 19,
  ),
  Post(
    username: 'babywhite142',
    imageAsset1: 'assets/instagram/10.png',
    location: 'Hue, VietNam',
    imageAsset: 'assets/instagram/9.png',
    likes: 911,
    comments: 130,
  ),
];
final List<String> imageAssets = [
  'assets/instagram/1.png',
  'assets/instagram/3.png',
];

PageController _pageController = PageController();
class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];

        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage(post.imageAsset1))),
              ),
              title: Text(post.username),
              subtitle: Text(post.location),
              trailing: Icon(Icons.more_vert),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(post.imageAsset),
                ),
              ),
            ),
            /*Container(
              height: 300,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: imageAssets.length,
                  itemBuilder: (context, index){
                    return Image.asset(
                      imageAssets[index],
                      fit: BoxFit.cover,
                    );
                  }
              ),
            ),*/
            ListTile(
              leading:
              Wrap(
                spacing: 10,
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 35),
                  SvgPicture.asset(
                    'assets/instagram/comment.svg',
                    width: 30,
                  ),
                  SvgPicture.asset(
                    'assets/instagram/messenger_icon.svg',
                    width: 30,
                  ),
                ],
              ),
              trailing: Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    '${post.likes} likes',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'View all ${post.comments} comments',
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('Add a comment...'),
              trailing: Wrap(
                spacing: 10,
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 20),
                  Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}