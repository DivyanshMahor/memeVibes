import 'package:flutter/material.dart';
import 'package:myapp/models/meme_model.dart';
import 'package:myapp/widgets/meme_card.dart';
import 'package:myapp/services/meme_service.dart';

class MemeHomePage extends StatefulWidget {
  const MemeHomePage({super.key});

  @override
  State<MemeHomePage> createState() => _MemeHomePageState();
}

class _MemeHomePageState extends State<MemeHomePage> {
  List<Meme> memes = [];
  bool isLoading = true;
  Color backgroundColor = Colors.deepPurple;

  @override
  void initState() {
    super.initState();
    fetchMemes();
  }

  Future<void> fetchMemes() async {
    final fetchMemes = await MemeService.fetchMeme(context);

    setState(() {
      memes = fetchMemes ?? [];
      isLoading = false;
    });
  }

  void updateBackgroundColor(Color color) {
    setState(() {
      backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    "MemeVibes😎",
    style: TextStyle(
      fontFamily: 'monospace', // Stylish built-in font
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: Colors.white,
      letterSpacing: 1.5,
    ),
  ),
  centerTitle: false, // This moves title to the left
  backgroundColor: backgroundColor.withOpacity(0.85),
  elevation: 8,
  shadowColor: Colors.black87,
),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              backgroundColor.withOpacity(0.9),
              Colors.black.withOpacity(0.7),
            ],
          ),
        ),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              )
            : memes.isEmpty
                ? Center(
                    child: Text(
                      "No Memes Yet 💀",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.85),
                        letterSpacing: 1,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: memes.length,
                    itemBuilder: (context, index) {
                      final meme = memes[index];
                      return MemeCard(
                        title: meme.title,
                        imageurl: meme.url,
                        ups: meme.ups,
                        postLink: meme.postLink,
                        onColorExtracted: updateBackgroundColor,
                      );
                    },
                  ),
      ),
    );
  }
}
