import 'package:flutter/material.dart';
import 'package:my_first_app/actionbtn.dart';

Widget feedBox(String avatarUrl, String userName, String date,
    String contentText, String contentImg) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: const Color(0xFF262626),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                radius: 25.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          if (contentText != "")
            Text(
              contentText,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          const SizedBox(
            height: 10.0,
          ),
          if (contentImg != "") Image.network(contentImg),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(
            thickness: 1.5,
            color: Color(0xFF505050),
          ),
          Row(
            children: [
              actionbutton(Icons.thumb_up, "Like", const Color(0xFF505050)),
              actionbutton(Icons.comment, "Reply", const Color(0xFF505050)),
              actionbutton(Icons.share, "Share", const Color(0xFF505050)),
            ],
          )
        ],
      ),
    ),
  );
}
