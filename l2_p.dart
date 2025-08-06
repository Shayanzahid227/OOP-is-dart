void main() {
  // using constructor then we must have to pass the values when we call the class in main function
  final a1 = area(5, 5);
  a1.height = 5;
  a1.width = 6;
  //a1.rectangleArea();
  // a1.rectangleArea();
}

class area {
  double? height;
  double? width;
  area(this.height, this.width);

  ///
  ///. the below both solution are acceptable
  ///
  /*
  void rectangleArea() {
    try {
      if (height == null || width == null) {
        throw Exception("Height or width is null.");
      } else if (height == 0 || width == 0) {
        print("Warning: width or height is zero. Area will be zero.");
      }

      double result = (height ?? 0) * (width ?? 0);
      print("The area of rectangle is: $result");
    } catch (e) {
      print("Error: $e");
    }
  }
*/
  /*
  void rectangleArea() {
    // use null check operator else it will throw an error
    // if do not want to use ! then assign value to height and width in class as initialized
    double result = height! * width!;
    print(" the area of rectangle is: $result");
  }

   */
}
