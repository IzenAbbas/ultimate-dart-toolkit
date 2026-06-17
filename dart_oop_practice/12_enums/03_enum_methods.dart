enum OrderStatus{
  pending,
  processing,
  delivered,
  cancelled;

  String message(){
    switch(this){
      case OrderStatus.pending:
        return "Order is Pending";
      case OrderStatus.processing:
        return "Order is being processed";
      case OrderStatus.delivered:
        return "Order has been delivered";
      case OrderStatus.cancelled:
        return "Order was cancelled";
    }
  }

  bool isCompleted(){
    return this==OrderStatus.delivered;
  }
}

void main(){
  OrderStatus order = OrderStatus.delivered;
  print(order.message());
  print(order.isCompleted());
}