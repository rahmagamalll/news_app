import 'package:flutter/material.dart';
import 'package:news_project/models/artical_model.dart';

class OneNews extends StatelessWidget {
  final ArticalModel articalmodel;
  const OneNews({super.key, required this.articalmodel});
  @override
  Widget build(BuildContext context) {
    return ListView(physics: const BouncingScrollPhysics(), children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            ClipRRect(
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
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      )
                // : Image.asset(
                //     'assets/none.png',
                //     height: 200,
                //     width: double.infinity,
                //     fit: BoxFit.cover,
                //   ),
                ), // important **********
            const SizedBox(
              height: 50,
            ),
            Text(
              articalmodel.title,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              articalmodel.subtitle ?? ' ',
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ),
    ]);
  }
}
