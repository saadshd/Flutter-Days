import 'package:driving_school/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class reviewpage extends StatefulWidget {
  const reviewpage({Key? key}) : super(key: key);

  @override
  State<reviewpage> createState() => _reviewpageState();
}

class _reviewpageState extends State<reviewpage> {

  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rating & Review"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Rating: $rating',
              style: kmd),
              gaph10,
              RatingBar.builder(
                minRating: 1,
              itemBuilder: (BuildContext context, int index) => Icon(Icons.star, color: Colors.indigo,),
                updateOnDrag: true,
                onRatingUpdate: (rating) => setState(() {
                  this.rating = rating;
                }),
              ),
              gaph20,

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: 'Enter your review',
                ),
                maxLines: 5,
                maxLength: 100,
              ),

              gaph20,
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Submit Review'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
