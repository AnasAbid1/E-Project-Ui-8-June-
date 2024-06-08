import 'package:flutter/material.dart';
class Review {
  final String username;
  final String comment;
  final int stars;
  int likes;

  Review({

    required this.username,
    required this.comment,
    required this.stars,
    this.likes = 0,
  });
}

class AttractionDetailScreen extends StatefulWidget {
  @override
  _AttractionDetailScreenState createState() => _AttractionDetailScreenState();
}

class _AttractionDetailScreenState extends State<AttractionDetailScreen> {
  List<Review> _reviews = [
    Review(username: 'User1', comment: 'Great place to visit!', stars: 5),
    Review(username: 'User2', comment: 'Enjoyed my time here.', stars: 4),
    Review(username: 'User3', comment: 'Average experience.', stars: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attraction Detail'),
      ),
      body: ListView.builder(
        itemCount: _reviews.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _reviews[index].username,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.thumb_up),
                              onPressed: () {
                                setState(() {
                                  _reviews[index].likes++;
                                });
                              },
                            ),
                            Text('${_reviews[index].likes}'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Text('${_reviews[index].stars}'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(_reviews[index].comment),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showReviewDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _showReviewDialog(BuildContext context) async {
    String comment = '';
    int stars = 0;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Review'),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Comment:'),
                  TextField(
                    onChanged: (value) {
                      comment = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your comment',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Rating:'),
                  Row(
                    children: List.generate(5, (index) {
                      return IconButton(
                        icon: Icon(index < stars ? Icons.star : Icons.star_border),
                        onPressed: () {
                          setState(() {
                            stars = index + 1;
                          });
                        },
                      );
                    }),
                  ),
                ],
              );
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (comment.isNotEmpty && stars > 0) {
                  setState(() {
                    _reviews.add(Review(username: 'User', comment: comment, stars: stars));
                  });
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please enter a comment and rating.'),
                  ));
                }
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}


