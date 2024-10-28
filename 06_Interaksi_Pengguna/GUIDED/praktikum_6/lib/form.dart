import 'package:flutter/material.dart'; 
class FormExample extends StatefulWidget { 
  const FormExample({super.key}); 
  
  @override 
  State<FormExample> createState() => _FormExampleState(); 
} 
  
class _FormExampleState extends State<FormExample> { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: Padding( 
        padding: const EdgeInsets.all(12), 
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [ 
            Container( 
              decoration: BoxDecoration( 
                border: Border.all(color: Colors.blue),  
                borderRadius: BorderRadius.circular(12),  
              ), 
              child: TextField( 
                decoration: InputDecoration( 
                  border: InputBorder.none,  
                  hintText: 'Masukkan Nama', 
                  contentPadding: 
                      EdgeInsets.all(16),  
                ), 
              ), 
            ), 
            SizedBox(height: 16), // Jarak antar field 
            Container( 
              decoration: BoxDecoration( 
                border: Border.all(color: Colors.blue),  
borderRadius: BorderRadius.circular(12),  
), 
            child: TextField( 
            decoration: InputDecoration( 
            border: InputBorder.none, 
            hintText: 'Masukkan Email', 
            contentPadding: EdgeInsets.all(16), 
            ), 
          ), 
       ), 
     ], 
      ), 
      ), 
    ); 
  } 
}