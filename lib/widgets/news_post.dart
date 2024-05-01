import 'package:flutter/material.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            "https://news.microsoft.com/wp-content/uploads/prod/sites/555/2020/02/asd.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          "بناء استراتيجية أمنية قوية تُصعّب من مهام المخترقين",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          'زيادة في الهجمات الإلكترونية تهدد الشركات في تركيا، وخبراء يتحولون إلى مقرصنين للتصدي للتهديدات السيبرانية',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
