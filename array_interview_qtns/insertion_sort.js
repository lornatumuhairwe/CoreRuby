var insert = function(array, rightIndex, value) {
    var temp = array[rightIndex + 1];

    for(var i = rightIndex; array[i] > value; i--) {
        array[i + 1] = array[i];
    }
    array[i + 1] = temp;
};

var insertionSort = function(array) {
    for(var i = 1; i < array.length; i++){
        insert(array, i - 1, array[i]);
    }
};

var array = [3, 5, 7, 11, 13, 2, 9, 6];

insertionSort(array);

console.log("Array after sorting: " + array);
