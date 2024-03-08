Text(
  'Take a photo from directly above the item',
  style: TextStyle(fontSize: 20),
),
GestureDetector(
  onTap: () {
    // Here you will call the method to pick the image
  },
  child: Container(
    height: 200, // Set your preferred height
    width: double.infinity, // Make it as wide as the screen
    color: Colors.grey, // Set background to grey
    child: Center(
      child: Text(
        'Tap to upload', 
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),
