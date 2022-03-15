import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DP dp = DP(context);
    return Container(
      padding: EdgeInsets.all(dp.size(25)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(dp.size(36)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: dp.size(295),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(dp.size(18)),
              ),
            ),
          ),
          dp.sh(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Rp. 15000',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: dp.size(25),
                      color: ColorsApp.blue2,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 3,
                    ),
                  ),
                  Text(
                    'Rp. 10000',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: dp.size(25),
                      color: ColorsApp.blue1,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(dp.size(11)),
                decoration: BoxDecoration(
                  color: ColorsApp.blue1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
                child: Text(
                  'diskon 10%',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: dp.size(15),
                  ),
                ),
              )
            ],
          ),
          dp.sh(10),
          Text(
            'Nama Barang Lumayan Panjang',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: dp.size(27),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
