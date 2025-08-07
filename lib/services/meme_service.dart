import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myapp/models/meme_model.dart';
import 'package:http/http.dart' as http;

class MemeService {
  static Future<List<Meme>?> fetchMeme(BuildContext context) async {
    final url = Uri.parse('https://meme-api.com/gimme/50');

    try {
      final respnce = await http.get(url);
      if (respnce.statusCode == 200) {
        final data = json.decode(respnce.body);
        final memes =
            (data['memes'] as List).map((meme) => Meme.fromJson(meme)).toList();
        return memes;
      } else {
        throw Exception('Dikkat hai bhai meme nhi a rhe');
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(
        const SnackBar(content: Text('Error to load memes')),
        );
      return null;
    }
  }
}
