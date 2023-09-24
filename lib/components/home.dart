import 'package:flutter/material.dart';

import 'package:movies_app/components/app_bar.dart';
import 'package:movies_app/models/movie_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<MovieModel> _list = [];

  void getData() {
    _list = MovieModel.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    getData(); //get movies data

    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          const SizedBox(height: 40,),
          movieList()
        ],
      ),

    );
  }

  Column movieList() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left:20),
              child: Text(
                'List of Movies',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 300,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: _list[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: AssetImage(_list[index].imgPath), fit: BoxFit.contain,),
                        Column(
                          children: [
                            Text(
                              _list[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 16
                              ),
                            ),
                             Text(
  
  _list[index].rating != 0 ? 'Rating: ${_list[index].rating} ⭐' : '',
  style: const TextStyle(
    color: Color(0xff7B6F72),
    fontSize: 13,
    fontWeight: FontWeight.w400,
  ),
)

                           
                          ],
                        ),
                        Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                _list[index].viewIsSelected ? const Color(0xff9DCEFF) : Colors.transparent,
                                _list[index].viewIsSelected ? const Color(0xff92A3FD) : Colors.transparent
                              ]
                            ),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: Text(
                              'View',
                              style: TextStyle(
                                color: _list[index].viewIsSelected ? Colors.white : const Color(0xffC58BF2),
                                fontWeight: FontWeight.w600,
                                fontSize: 14
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 25,),
                itemCount: _list.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                left: 20,
                right: 20
              ),
              ),
            )
          ],
        );
  }

}

