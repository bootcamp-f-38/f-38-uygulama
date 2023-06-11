import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventAnnouncementPage extends StatelessWidget {
  final List<Event> events = [
    Event(
      title: 'Etkinlik 1',
      date: '20 Haziran 2023',
      time: '18:00',
      image: 'imagesdeneme/event1.jpg',
    ),
    Event(
      title: 'Etkinlik 2',
      date: '25 Haziran 2023',
      time: '19:30',
      image: 'imagesdeneme/event2.jpg',
    ),
    Event(
      title: 'Etkinlik 3',
      date: '5 Temmuz 2023',
      time: '16:00',
      image: 'imagesdeneme/event3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Etkinlik Duyuruları',
            style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8))),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return EventCard(event: events[index]);
        },
      ),
    );
  }
}

class Event {
  final String title;
  final String date;
  final String time;
  final String image;

  Event(
      {required this.title,
      required this.date,
      required this.time,
      required this.image});
}

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset(
            event.image,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          Text(
            event.title,
            style: GoogleFonts.raleway(
                textStyle: TextStyle(fontSize: 20),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Tarih: ${event.date}',
            style: GoogleFonts.raleway(textStyle: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 8),
          Text(
            'Saat: ${event.time}',
            style: GoogleFonts.raleway(textStyle: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Detayları Gör',
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              )),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
