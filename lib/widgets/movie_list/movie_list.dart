import 'package:flutter/material.dart';
import 'package:kino_app/resources/resources.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 163,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        )
                      ]),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () {
                      print('object');
                    },
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(AppImages.img0727),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Mortal combat',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'April 7, 2021',
                                style: TextStyle(color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Wahfhj uhwgrjjejgwe njbjej ejgjgjgj jgrjgj jgjwjgj jgjjrewjgjw wgjgu ugtuwujgwuguwuwug jjwjgj j jjwjgjw jjwjgj jwj jwj jw j j jwjgjggjgjgjgjngjn s llgglglhlflhlfhlhflhflfhlfhlhflhfklfhklfhklfhkhflkhflfhlfhklhfklfhklfhklhfkflhlfhlhflhkflhflfhklfhklfhklhffhlfhlhfklfhlkhfklfhkllkhl lfklhfklhlkfhklhflkfhklfhlk',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      print('у теб] все получится!');
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
