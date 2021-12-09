import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
        tag: Hero,
        child: Padding(padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 72,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/avatar.webp'),
          ),
        ),
    );

    final Welcome_screen = Padding(padding: EdgeInsets.all(8.0),
    child: Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam metus purus, vestibulum ac turpis ut, luctus mollis mi. Vestibulum at augue et tellus hendrerit dapibus. Nullam finibus ornare nulla, eget ullamcorper ipsum porta porttitor. Maecenas nec enim dignissim, consectetur ante ut, placerat ex. Etiam aliquam sem ac nulla convallis, et posuere elit porta. Phasellus quis interdum purus, ac fermentum augue. Aliquam posuere mattis dolor at molestie. Aliquam ut nisi luctus, pellentesque lectus vitae, varius augue. Vestibulum et justo mi',


    style: GoogleFonts.poiretOne(
        fontSize: 15,
        color: Colors.black,
      ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(25),

      child: Column(
        children: [
          alucard,
          Welcome_screen,
        ],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
