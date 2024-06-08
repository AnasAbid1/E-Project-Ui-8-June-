import 'package:flutter/material.dart';
class Attraction {
  final String name;
  final String imageUrl;
  final String description;
  final String contactInfo;
  final String openingHours;
  final double rating;
  final String category;

  Attraction({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.contactInfo,
    required this.openingHours,
    required this.rating,
    required this.category,
  });
}

final List<Attraction> attractions = [
  Attraction(
    name: 'Minar-e-Pakistan',
    imageUrl: 'https://media.istockphoto.com/id/2153863369/photo/a-national-monument-in-lahore-pakistan.jpg?s=612x612&w=0&k=20&c=2HI-ZYAtLr-idltDG5lZHWJXIqw5GR4725wqlm-B9eU=',
    description: 'A famous national monument located in Lahore.',
    contactInfo: 'Contact: 123-456-7890',
    openingHours: '9:00 AM - 6:00 PM',
    rating: 4.5,
    category: 'Landmark',
  ),
  Attraction(
    name: 'Badshahi Mosque',
    imageUrl: 'https://media.istockphoto.com/id/1412182311/photo/badahahi-mosque-mughal-artitecture-lahore-pakistan.jpg?s=612x612&w=0&k=20&c=oiF8WqyRLYF-bYzqG2VOXdMhwg08N6PqudWsOQCbk6g=',
    description: 'A historical mosque built by Mughal  Aurangzeb.',
    contactInfo: 'Contact: 123-456-7891',
    openingHours: '8:00 AM - 7:00 PM',
    rating: 4.8,
    category: 'Historical Site',
  ),
  Attraction(
    name: 'Clifton Beach',
    imageUrl: 'https://media.istockphoto.com/id/1819401906/photo/lifestyle-in-clifton-beach-in-karachi-pakistan.jpg?s=612x612&w=0&k=20&c=F_ac8Gt7mFrlF7IJ64GSKfBipz9-ixyoOUgB9UvXrmw=',
    description: 'A popular beach located in Karachi.',
    contactInfo: 'Contact: 123-456-7892',
    openingHours: 'Open 24 hours',
    rating: 4.3,
    category: 'Nature',
  ),
  Attraction(
    name: 'Hunza Valley',
    imageUrl: 'https://media.istockphoto.com/id/1497850074/photo/valley-in-hindu-kush-mountains-beautifull-landscape-pakistan.jpg?s=612x612&w=0&k=20&c=H61_ycxYVXbywKetUm60BwWI-dC6oVplzP4rKwoq6wM=',
    description: 'A beautiful valley in the Gilgit-Baltistan region.',
    contactInfo: 'Contact: 123-456-7893',
    openingHours: 'Open 24 hours',
    rating: 4.9,
    category: 'Nature',
  ),
  Attraction(
    name: 'Faisal Mosque',
    imageUrl: 'https://media.istockphoto.com/id/182864057/photo/twilight-shah-faisal-mosque-islamabad-pakistan.jpg?s=612x612&w=0&k=20&c=muy6FZY2QhE-852E7ECRQYvSQC1QHDGrjfo-zj2v4FE=',
    description: 'The largest mosque Pakistan located in Islamabad.',
    contactInfo: 'Contact: 123-456-7894',
    openingHours: '8:00 AM - 10:00 PM',
    rating: 4.7,
    category: 'Religious Site',
  ),
  // Aap aur bhi items add kar sakte hain
];

class AttractionList extends StatefulWidget {
  @override
  _AttractionListState createState() => _AttractionListState();
}

class _AttractionListState extends State<AttractionList> {
  String selectedCategory = 'All';
  bool sortByRating = false;

  List<Attraction> get filteredAttractions {
    List<Attraction> filtered = attractions;
    if (selectedCategory != 'All') {
      filtered = filtered.where((a) => a.category == selectedCategory).toList();
    }
    if (sortByRating) {
      filtered.sort((a, b) => b.rating.compareTo(a.rating));
    }
    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attractions in Pakistan'),
        actions: [
          DropdownButton<String>(
            value: selectedCategory,
            onChanged: (String? newValue) {
              setState(() {
                selectedCategory = newValue!;
              });
            },
            items: <String>['All', 'Landmark', 'Historical Site', 'Nature', 'Religious Site']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          IconButton(
            icon: Icon(sortByRating ? Icons.star : Icons.star_border),
            onPressed: () {
              setState(() {
                sortByRating = !sortByRating;
              });
            },
          ),
        ],
      ),


      body: ListView.builder(
        itemCount: filteredAttractions.length,
        itemBuilder: (context, index) {
          final attraction = filteredAttractions[index];
          return Container(
            height: 150,
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                  Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 05),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(attraction.imageUrl),

                    ),
                  ),),


                      Positioned(
                        left: 120,
                        top: 10,
                        child: Text(
                          attraction.name,
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Positioned(
                          left: 120,
                          top: 35,
                          child: Text(attraction.description,style: TextStyle(fontSize: 11),)),

                      Positioned(
                          left: 120,
                          top: 53,
                          child: Text(attraction.contactInfo,)),
                      SizedBox(height: 8.0),
                      Positioned(
                          left: 120,
                          top: 75,
                          child: Text('Opening Hours: ${attraction.openingHours}')),
                      SizedBox(height: 8.0),
                      Positioned(
                        left: 120,
                        top: 95,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Positioned(
                                left: 120,
                                top: 84,
                                child: Text('Rating: ${attraction.rating}')),

                          ],
                        ),
                      ),
                    ],

                ),
              ),
            ),
          );
        },
      ),
    );
  }
}




