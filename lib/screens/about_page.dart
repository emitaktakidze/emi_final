import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("აპლიკაციის შესახებ"),
      ),
      body: Column(
        children:  [
          const Image(image: AssetImage("assets/images/logo.png")),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(16),
            child: const Text(
              'პროექტი მომზადდა USAID-ის სამოქალაქო განათლების პროგრამის ფარგლებში, პარტნიორი ორგანიზაცია ჯეოლაბის კურსის ფინალურ ეტაპზე. პროგრამა ხორციელდება PH international-ის მიერ, აშშ საერთაშორისო განვითარების სააგენტოს (USAID) დაფინანსებითა და საქართველოს განათლებისა და მეცნიერების სამინისტროს მხარდაჭერით.',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
