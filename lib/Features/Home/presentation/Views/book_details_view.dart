import 'package:bookly_app/Features/Home/presentation/Views/Widget/book_details_view_body.dart';
import 'package:flutter/material.dart';


class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.close),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart),),
        ],
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
