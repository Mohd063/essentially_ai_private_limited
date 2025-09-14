import 'package:essentially_ai_private_limited/data/dummy_orders.dart';
import 'package:essentially_ai_private_limited/widgets/custom_chip.dart';
import 'package:essentially_ai_private_limited/widgets/market_chip.dart';
import 'package:essentially_ai_private_limited/widgets/order_card.dart';
import 'package:essentially_ai_private_limited/widgets/order_table.dart';
import 'package:flutter/material.dart';


class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Open Orders',
          style: TextStyle(fontWeight: FontWeight.bold),
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.visible,
        ),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () {},
          ),
        SizedBox(width: 8),
          LayoutBuilder(
            builder: (context, constraints) {
              double width = MediaQuery.of(context).size.width;

              if (width < 360) {
                return IconButton(
                  icon:Icon(Icons.cancel, color: Colors.red),
                  onPressed: () {},
                );
              } else {
                return Container(
                  margin: EdgeInsets.only(right: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding:EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    child:Text('Cancel all'),
                  ),
                );
              }
            },
          ),
        ],
      ),
   body: Column(
        children: [
         
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Row(
              children: [
                MarketChip(title: "SIGNORIA", value: "0.00", color: Colors.red),
                SizedBox(width: 8),
                MarketChip(title: "NIFTY BANK", value: "52,323.30", color: Colors.green),
                SizedBox(width: 8),
                MarketChip(title: "NIFTY FIN SERVICE", value: "25,255.75", color: Colors.blue),
                SizedBox(width: 8),
                MarketChip(title: "RELCHEM", value: "162.73", color: Colors.orange),
              ],
            ),
          ),

        
Container(
  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  //color: Colors.grey[100],   // 🔹 Background same as market chips
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        CustomChip(text: "All", isSelected: true),
        SizedBox(width: 8),
        CustomChip(text: "Buy"),
        SizedBox(width: 8),
        CustomChip(text: "Sell"),
        SizedBox(width: 16),
        SearchBox(),
      ],
    ),
  ),
),


        Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  //  Mobile devices
                  return ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: dummyOrders.length,
                    itemBuilder: (context, index) {
                      return OrderCard(order: dummyOrders[index]);
                    },
                  );
                } else {
                  // big devices
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        color: Colors.grey[200],
                        child: Row(
                          children: [
                            Expanded(flex: 1, child: Text('Time', style: TextStyle(fontWeight: FontWeight.bold))),
                            Expanded(flex: 1, child: Text('Client', style: TextStyle(fontWeight: FontWeight.bold))),
                            Expanded(flex: 2, child: Text('Ticker', style: TextStyle(fontWeight: FontWeight.bold))),
                            Expanded(flex: 1, child: Text('Side', style: TextStyle(fontWeight: FontWeight.bold))),
                            Expanded(flex: 1, child: Text('Product', style: TextStyle(fontWeight: FontWeight.bold))),
                            Expanded(flex: 2, child: Text('Qty (Executed/Total)', style: TextStyle(fontWeight: FontWeight.bold))),
                            Expanded(flex: 1, child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold))),
                            Expanded(flex: 1, child: Text('Actions', style: TextStyle(fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: dummyOrders.length,
                          itemBuilder: (context, index) {
                            return OrderTableRow(order: dummyOrders[index]);
                          },
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
