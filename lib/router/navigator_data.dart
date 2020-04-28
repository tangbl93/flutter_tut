import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

void main() => runApp(
    MaterialApp(
      home: ProductListWidget(
        products: List.generate(100, (index) {
          return Product("商品${index}", "这是商品描述${index}");
        }),
      ),
    )
);

// 演示如何传递数据到下一个页面
class ProductListWidget extends StatelessWidget {

  List<Product> products;
  ProductListWidget({Key key, @required this.products}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ProductListWidget")),
      body: ListView.builder(
        itemCount: this.products.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          Product product = this.products[index];
          return ListTile(
            title: Text(product.title),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ProductDetailWidget(product: product)
              ));
            },
          );
        },
      ),
    );
  }
}

class ProductDetailWidget extends StatelessWidget {

  Product product;
  ProductDetailWidget({Key key, @required this.product}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.product.title)),
      body: Center(
        child: RaisedButton(
          child: Text(this.product.description),
        ),
      ),
    );
  }
}
