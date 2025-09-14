  import 'package:essentially_ai_private_limited/models/order.dart';
  import 'package:flutter/material.dart';

  class OrderTableRow extends StatelessWidget {
    final Order order;
    const OrderTableRow({super.key, required this.order});

    @override
    Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
        ),
        child: Row(
          children: [
            Expanded(flex: 1, child: Text(order.time)),
            Expanded(flex: 1, child: Text(order.client)),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Text(order.ticker),
                  if (order.isEv)  SizedBox(width: 4),
                  if (order.isEv)
                    Icon(Icons.info_outline, size: 16, color: Colors.blue),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                order.side,
                style: TextStyle(
                  color: order.side == 'Buy' ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(flex: 1, child: Text(order.product)),
            Expanded(flex: 2, child: Text(order.quantity)),
            Expanded(flex: 1, child: Text(order.price)),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
    }
  }
