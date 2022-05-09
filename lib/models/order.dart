class Order {
  String? laundryID,
      machineID,
      price,
      addon1,
      addon2,
      addon3,
      email,
      name,
      orderMethod,
      addressID,
      collectTime,
      note,
      totalPrice;

  Order(
      {this.laundryID,
      this.machineID,
      this.price,
      this.addon1,
      this.addon2,
      this.addon3,
      this.email,
      this.name,
      this.orderMethod,
      this.addressID,
      this.collectTime,
      this.note,
      this.totalPrice});
}
