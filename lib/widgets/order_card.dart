import 'package:essentially_ai_private_limited/models/order.dart';
import 'package:flutter/material.dart';


class OrderCard extends StatelessWidget {
  final Order order;
  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Ticker and EV icon and Time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(order.ticker,
                    style:TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                if (order.isEv)
                   Icon(Icons.info_outline, size: 16, color: Colors.blue),
                Text(order.time, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
           SizedBox(height: 8),

            //  client and Buy or Sell
            Row(
              children: [
                Text("Client: ${order.client}"),
               Spacer(),
                Text(
                  order.side,
                  style: TextStyle(
                    color: order.side == 'Buy' ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
             SizedBox(height: 8),

            // product and qty
            Row(
              children: [
                Text("Product: ${order.product}"),
               Spacer(),
                Text("Qty: ${order.quantity}"),
              ],
            ),
          SizedBox(height: 8),

            // price and actions
            Row(
              children: [
                Text("Price: ${order.price}"),
                 Spacer(),
                IconButton(
                  icon:  Icon(Icons.more_vert, size: 20),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
