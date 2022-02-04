void main() {
  String binarySearch(List<int> nums, int val) {
    int startPointer = 0;
    int endPointer = nums.length - 1;
    int midPointer = ((startPointer + endPointer) / 2).floor();
    while (startPointer <= endPointer) {
      print("test $startPointer $endPointer $midPointer");
      if (nums[midPointer] == val) return 'exist in index $midPointer';
      if (nums[midPointer] < val) startPointer = midPointer + 1;
      if (nums[midPointer] > val) endPointer = midPointer - 1;
      midPointer = ((startPointer + endPointer) / 2).floor();
    }
    return "not exist -1";
  }

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(binarySearch(numbers, 9));
}
