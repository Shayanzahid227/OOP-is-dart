void main() {
  // using constructor then we must have to pass the values when we call the class in main function
  final a1 = area(5, 5);
  // a1.height = 67.432;
  // a1.width = 23.456;
  a1.rectangleArea();
}

class area {
  double? height = 1;
  double? width = 1;
  area(this.height, this.width);
  void rectangleArea() {
    // use null check operator else it will throw an error
    // if do not want to use ! then assign value to height and width in class as initialized
    double result = height! * width!;
    print(" the area of rectangle is: $result");
  }
}
