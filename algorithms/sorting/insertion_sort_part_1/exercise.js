function processData(input) {
  var lines = input.split("\n");
  var n = parseInt(lines[0]);
  var arr = lines[1].split(" ").map(function(string) {
  	return parseInt(string);
  });
  // Other way of converting strings to integers
  // var arr = lines[1].split(" ").map(Number);

  var e = arr[n - 1];

	for (var i = n - 1; i > 0 ; i--) {
		if (e < arr[i - 1]) {
			arr[i] = arr[i - 1];
   		console.log(arr.toString());
		} else {
			arr[i] = e;
      console.log(arr.toString());
		};
	};
}  

var string;
string = "5\n2 4 6 8 3"

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
