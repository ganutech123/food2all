import 'package:flutter/material.dart';
import 'package:food2all/pojo/Product.dart';

class BestFoodWidget extends StatefulWidget {
  @override
  _BestFoodWidgetState createState() => _BestFoodWidgetState();
}

class _BestFoodWidgetState extends State<BestFoodWidget> {
  List<Product> _dishes = List<Product>();

  List<Product> _cartList = List<Product>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _populateDishes();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height - 185.0,
      decoration: BoxDecoration
        (
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
      ),
      child: _buildListView(),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(

        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath,
                              child: Image(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    foodName,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    price,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        )
    );
  }

  ListView _buildListView()
  {
    return ListView.builder
      (
      itemCount: _dishes.length,
      itemBuilder: (context, index)
      {
        var item = _dishes[index];

        return Padding
          (

            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: InkWell(
                onTap: () {

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        child: Row(
                            children: [
                              Hero(
                                  tag: item.itemImage,
                                  child: Image(
                                      image: AssetImage(item.itemImage),
                                      fit: BoxFit.cover,
                                      height: 75.0,
                                      width: 75.0
                                  )
                              ),
                              SizedBox(width: 10.0),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Text(
                                        item.DisplayName,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold
                                        )
                                    ),
                                    Text(
                                        item.Rate.toString(),
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        )
                                    )
                                  ]
                              )
                            ]
                        )
                    ),
                    IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.black,
                        onPressed: () {}
                    )
                  ],
                )
            )

        );
      },
    );
  }

  void _populateDishes() {

    var list = <Product>[
      Product(
          'assets/plate2.png',
          "Spring bowl",
          39
      ),
      Product(
          'assets/plate6.png',
          "Avocado bowl",
          55
      ),
      Product(
          'assets/plate5.png',
          "Berry bowl",
          78
      ),
      Product(
          'assets/plate1.png',
          "Chilli bowl",
          79
      ),
      Product(
          'assets/plate2.png',
          "Barg bowl",
          77
      ),
      Product(
          'assets/plate6.png',
          "Nogk bowl",
          44
      ),
    ];

    setState(() {
      _dishes = list;
    });
  }
}
