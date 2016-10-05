function processData(input) {
  var lines = input.split("\n");
  var n = parseInt(lines[0]);
  var arr = lines[1].split(" ").map(function(string) {
    return parseInt(string);
  });
  // Other way of converting strings to integers
  // var arr = lines[1].split(" ").map(Number);

  for (var i = 1; i < n; i++) {
    position = i;
    shift_number = arr[i];
    while (shift_number < arr[position - 1]) {
      arr[position] = arr[position - 1];
      arr[position - 1] = shift_number;

      if (position > 0) {
        position--;
      }
    };

    result = "";
    arr.forEach(function(num) {
      result = result + num.toString() + " ";
    });
    console.log(result);
  };
};

var string;
// string = "5\n2 4 6 8 3"
// string = "14\n1 3 5 9 13 22 27 35 46 51 55 83 87 23"
string = "10\n2 3 4 5 6 7 8 9 10 1"

processData(string);

// process.stdin.resume();
// process.stdin.setEncoding("ascii");
// _input = "";
// process.stdin.on("data", function (input) {
//     _input += input;
// });

// process.stdin.on("end", function () {
//    processData(_input);
// });
