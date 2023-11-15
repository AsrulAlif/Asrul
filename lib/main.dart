import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godrej E-Commerce',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Godrej'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search button press
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Godrej Profile Box
            Container(
              color: const Color.fromARGB(255, 244, 162, 54),
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Godrej Profile Picture (replace with your image)
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(''), // Add your image URL
                  ),
                  SizedBox(width: 16.0),
                  // Godrej Name, Followers, Mengikuti, Share Buttons
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Juragan Minyak',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.person),
                          Text('100k Followers'),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle Mengikuti button press
                            },
                            child: Text('Mengikuti'),
                          ),
                          SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {
                              // Handle Share button press
                            },
                            child: Text('Share'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Carousel Image for Promotion
            // Add your carousel widget here

            // Belanja Berdasarkan Kategori
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Belanja Minyak',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            // 4 Buttons with Images
            // Add your button widgets here

            // Semua Produk Title with Sort Buttons
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Minyak',
                    
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle Promosi button press
                        },
                        child: Text('Beli 5'),
                      ),
                      SizedBox(width: 8.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle Nama Produk button press
                        },
                        child: Text('Rp.20.000.00'),
                      ),

                    
                      
                    ],
                  ),
                  
                ],
              ),
            ),
            
            
            // Product Images, Name, and Price
            // Display products in 2 columns
            // Add your product widgets here

            // + Keranjang Button
            ElevatedButton(
              onPressed: () {
                // Handle + Keranjang button press
              },
              child: Text('+ Keranjang'),
            ),
          ],
        ),
      ),
    );
  }
}
