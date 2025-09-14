class Order {
  final String id;
  final String time;
  final String client;
  final String ticker;
  final String side;
  final String product;
  final String quantity;
  final String price;
  final bool isEv;

  Order({
    required this.id,
    required this.time,
    required this.client,
    required this.ticker,
    required this.side,
    required this.product,
    required this.quantity,
    required this.price,
    this.isEv = false,
  });
}
