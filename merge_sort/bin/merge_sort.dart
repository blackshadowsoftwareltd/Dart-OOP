void main(){
  final list=[3,5,7,4,6,1,8,9,2];
  print(list);
  mergeSort(list);
  print(list);
}
void mergeSort(List<int> list) {
  if (list.length <= 1) {
    return;
  }

  // Divide the list into two halves.
  final mid = list.length ~/ 2;
  final left = list.sublist(0, mid);
  final right = list.sublist(mid);

  // Recursively sort the two halves.
  mergeSort(left);
  mergeSort(right);

  // Merge the two sorted halves.
  merge(list, left, right);
}

void merge(List<int> list, List<int> left, List<int> right) {
  // Create a temporary list to store the merged results.
  final merged = [];

  // Initialize two pointers to iterate over the left and right subarrays.
  var i = 0;
  var j = 0;

  // While both pointers are less than their respective subarray lengths,
  // compare the elements at the current positions and add the smaller element
  // to the merged list.
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      merged.add(left[i]);
      i++;
    } else {
      merged.add(right[j]);
      j++;
    }
  }

  // Add any remaining elements from the left and right subarrays to the merged list.
  while (i < left.length) {
    merged.add(left[i]);
    i++;
  }

  while (j < right.length) {
    merged.add(right[j]);
    j++;
  }

  // Copy the merged list back to the original list.
  for (var i = 0; i < merged.length; i++) {
    list[i] = merged[i];
  }
}
