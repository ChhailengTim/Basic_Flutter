import 'package:flutter/material.dart';

Widget storiestile(String avatarURL, String storyURL, String username) {
  return Container(
    margin: const EdgeInsets.only(
      right: 20.0,
    ),
    height: 144.0,
    width: 120.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      image: DecorationImage(
        image: NetworkImage(storyURL),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              backgroundImage: NetworkImage(avatarURL),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            username,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    ),
  );
}
