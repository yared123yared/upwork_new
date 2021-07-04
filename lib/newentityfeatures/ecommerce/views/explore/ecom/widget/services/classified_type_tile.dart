import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class ClassifiedTypeTile extends StatelessWidget {
  final String typeName;
  final String imageUrl;
  final VoidCallback onTap;
  const ClassifiedTypeTile({
    Key key,
    @required this.typeName,
    @required this.imageUrl,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      duration: Duration(milliseconds: 200),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            // if (selected == index)
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 8,
            ),
          ],
        ),
        child: GestureDetector(
          onTap: onTap,
          child: ClipRRect(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: 120.0, // + (selected == index ? 4 : 0),
              height: 144.0, // + (selected == index ? 4 : 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 4,
                  color: Colors.red[400],
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // width: 120,
                        // height: 24.0 - (selected == index ? 4 : 0),
                        color: Colors.red[400],
                        child: Center(
                          child: Text(
                            typeName,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
