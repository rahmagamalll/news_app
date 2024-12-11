import 'package:flutter/material.dart';
import 'package:news_project/models/artical_model.dart';
import 'package:news_project/views/one_news_view.dart';

class NewsComponent extends StatelessWidget {
  final ArticalModel articalmodel;

  const NewsComponent({required this.articalmodel, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return OneNewsView(articalmodel: articalmodel);
            },
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: articalmodel.image != null
                    ? Image.network(
                        articalmodel.image!,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : const Padding(
                        padding: EdgeInsets.only(bottom: 22),
                        child: Text(
                          'No Image',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                // : Image.asset(
                //     'assets/none.png',
                //     height: 200,
                //     width: double.infinity,
                //     fit: BoxFit.cover,
                //   ),
                ),
          ), // important **********
          Text(
            articalmodel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black, fontSize: 13),
          ),
          Text(
            articalmodel.subtitle ?? ' ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 10),
          ),
          const Divider(
            color: Color.fromARGB(255, 207, 204, 204),
            thickness: 1,
            endIndent: 40,
            indent: 40,
          )
        ],
      ),
    );
  }
}
